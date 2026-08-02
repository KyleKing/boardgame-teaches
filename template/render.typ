// Renders a teach data file. Two views over one source: the paper view lists
// the base spine and every module's patches as sections, and the resolved view
// composes a single path for one config. Resolution order is replace, insert,
// amend, because an amendment may target an inserted step.

#import "teach.typ": *

#let markup-scope = (gap: gap, official: official, fanmade: fanmade)

#let md(s) = if s == none { none } else {
  eval(s, mode: "markup", scope: markup-scope)
}

#let module-by-id(data, id) = data.modules.find(m => m.id == id)

#let group-ids(b) = b.at("when", default: (:)).at("modules_all", default: ())

#let group-label(data, ids) = (
  ids.map(id => module-by-id(data, id).name).join(" + ")
)

#let group-provenance(data, ids) = if ids.any(id => (
  module-by-id(data, id).provenance == "fan"
)) { fanmade } else { official }

#let matches(when, config) = {
  if when == none { return true }
  let players = when.at("players", default: none)
  if players != none and config.players not in players { return false }
  if not group-ids((when: when)).all(m => m in config.modules) { return false }
  if when.at("modules_none", default: ()).any(m => m in config.modules) {
    return false
  }
  true
}

#let banner(label, lines) = block(
  width: 100%,
  above: 8pt,
  below: 10pt,
  inset: 8pt,
  stroke: hairline,
  {
    text(size: 7.5pt, fill: muted, tracking: 0.08em, upper(label))
    v(2pt)
    for l in lines {
      block(above: 2pt, below: 2pt, l)
    }
  },
)

#let source-note(name, body) = block(above: 6pt, below: 4pt)[
  #box(
    inset: (x: 4pt, y: 1pt),
    stroke: hairline,
    text(weight: "bold", size: 8pt, name),
  )
  #h(4pt) #body
]

#let render-child(c) = {
  let body = md(c.at("body", default: none))
  let kind = c.at("kind", default: "note")
  if kind == "say" { say(body) } else if kind == "do" { do(body) } else if (
    kind == "branch"
  ) { branch(c.label, body) } else if kind == "strategy" {
    strategy(body)
  } else if (
    kind == "rule"
  ) { rule(md(c.lead), body) } else if kind == "exception" {
    exception(md(c.trigger), md(c.ruling))
  } else { block(above: 4pt, below: 4pt, body) }
}

#let render-beat(b, config) = beat(md(b.title), key: b.key, {
  md(b.at("body", default: none))
  let children = b
    .at("children", default: ())
    .filter(c => matches(c.at("when", default: none), config))
  for c in children {
    render-child(c)
  }
  for a in b.at("amendments", default: ()) {
    source-note(a.label, md(a.body))
  }
})

// Applies every patch that survives the config filter to the base spine.
// Returns the composed beats plus the amendments that lost their target.
#let compose(data, config) = {
  let active = data.blocks.filter(b => (
    matches(b.at("when", default: none), config)
  ))
  let patches = active.filter(b => b.kind == "patch")
  let label-of = p => group-label(data, group-ids(p))

  let carry = (p, fallback) => (
    kind: "beat",
    key: fallback.key,
    title: p.at("title", default: fallback.title),
    body: p.at("body", default: none),
    children: p.at("children", default: ()),
    from: label-of(p),
  )

  let replacements = patches.filter(p => p.op == "replace")
  let replaced-keys = replacements.map(p => p.target)
  let spine = active
    .filter(b => b.kind == "beat")
    .map(s => {
      let r = replacements.filter(p => p.target == s.key)
      if r.len() == 0 { s } else { carry(r.last(), s) }
    })

  let ordered = ()
  for s in spine {
    ordered.push(s)
    for i in patches.filter(p => p.op == "insert" and p.target == s.key) {
      ordered.push(carry(i, (key: i.key, title: none)))
    }
  }

  let keys = ordered.map(b => b.key)
  let amendments = patches.filter(p => p.op == "amend")
  let live = amendments.filter(p => (
    p.target in keys and p.target not in replaced-keys
  ))

  (
    beats: ordered.map(b => (
      ..b,
      amendments: live
        .filter(p => p.target == b.key)
        .map(p => (label: label-of(p), body: p.body)),
    )),
    dropped: amendments.filter(p => p not in live),
  )
}

#let config-problems(data, config, composed) = {
  let problems = ()
  for id in config.modules {
    let m = module-by-id(data, id)
    if m == none {
      problems.push[Unknown module `#id`.]
    } else if config.players not in m.players {
      problems.push[
        #m.name is not available at #config.players
        #if config.players == 1 { "player" } else { "players" }.
      ]
    }
  }
  if (
    config.modules.sorted()
      not in data.verified_combinations.map(c => (
        c.sorted()
      ))
  ) {
    problems.push[
      This stack has no combination entry, so nothing here has been checked at
      the intersection. Read the module rules before playing it.
    ]
  }
  for d in composed.dropped {
    problems.push[
      #group-label(data, group-ids(d)) amends step #d.target, which is replaced
      or absent in this config. Dropped.
    ]
  }
  problems
}

#let render-resolved(data, config) = {
  let composed = compose(data, config)
  let problems = config-problems(data, config, composed)
  if problems.len() > 0 {
    banner("Check before you teach", problems)
  }
  for b in composed.beats {
    render-beat(b, config)
  }
}

#let patch-key(p) = if p.op == "insert" { "+" + p.key } else if (
  p.op == "replace"
) { "=" + p.target } else { "~" + p.target }

#let render-paper(data) = {
  let blocks = data.blocks
  section[Base spine (keys only)]
  for b in blocks.filter(b => b.kind == "beat" and group-ids(b).len() == 0) {
    render-beat((..b, amendments: ()), (players: 2, modules: ()))
  }

  let groups = ()
  for p in blocks.filter(b => b.kind == "patch") {
    let ids = group-ids(p)
    if ids not in groups { groups.push(ids) }
  }
  for ids in groups {
    section[#group-provenance(data, ids) #group-label(data, ids)]
    for p in blocks.filter(b => b.kind == "patch" and group-ids(b) == ids) {
      let title = p.at("title", default: none)
      patch(patch-key(p), {
        if title != none [*#title.* ]
        md(p.body)
        for c in p.at("children", default: ()) {
          render-child(c)
        }
      })
    }
  }
}

// Config comes from `typst compile --input players=1 --input modules=solo,pantheon`.
// With no inputs the paper view is built, so the default output is unchanged.
#let config-from-inputs() = {
  let players = int(sys.inputs.at("players", default: "0"))
  if players == 0 { return none }
  (
    players: players,
    modules: sys
      .inputs
      .at("modules", default: "")
      .split(",")
      .filter(m => m.trim() != "")
      .map(m => m.trim()),
  )
}

#let config-meta(data, config) = {
  let names = config.modules.map(id => {
    let m = module-by-id(data, id)
    if m == none { id } else { m.name }
  })
  let played = if names.len() == 0 { "base game" } else { names.join(", ") }
  [#config.players #if config.players == 1 { "player" } else {
      "players"
    } · #played]
}

#let sheet-for(data, config) = teach-sheet.with(
  title: if config == none { data.title + " expansion patches" } else {
    data.title
  },
  meta: if config == none { data.meta } else { config-meta(data, config) },
  legend: false,
)

#let render(data, config) = {
  if config == none { render-paper(data) } else {
    render-resolved(data, config)
  }
  if "caveat" in data {
    section[Caveat]
    md(data.caveat)
  }
}

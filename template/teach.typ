// Teach sheet template. Low-ink discipline: hairline rules, no filled bars,
// grayscale plus at most one accent. Panels are half-letter so a duplex
// letter sheet imposes to a half-fold booklet.

#let accent = luma(0%)
#let muted = luma(45%)
#let hairline = 0.5pt + luma(60%)

#let beat-counter = counter("beat")

#let teach-sheet(title: none, meta: none, legend: false, body) = {
  set page(
    width: 5.5in,
    height: 8.5in,
    margin: (x: 0.45in, y: 0.5in),
    footer: context {
      set text(size: 7pt, fill: muted)
      title
      h(1fr)
      counter(page).display()
    },
  )
  set text(font: "Libertinus Serif", size: 9.5pt)
  set par(justify: false, leading: 0.55em)
  set table(stroke: (x, y) => if y == 0 { (bottom: hairline) } else {
    (top: 0pt)
  })

  block(below: 2pt, text(size: 15pt, weight: "bold", title))
  if meta != none {
    block(above: 4pt, below: 6pt, text(size: 8pt, fill: muted, meta))
  }
  if legend {
    block(
      above: 2pt,
      below: 8pt,
      text(size: 7.5pt, fill: muted)[
        *bold* beat, phrase it your way · "quotes" said close to verbatim ·
        [brackets] done, not said · [labels] branch, read the line that applies ·
        ° house convention, see footnote
      ],
    )
  }
  line(length: 100%, stroke: hairline)
  body
}

// A numbered beat: the spine of the teach. Title is said your own way.
#let beat(title, body) = {
  beat-counter.step()
  block(above: 10pt, below: 4pt, {
    context text(weight: "bold", size: 10.5pt)[#beat-counter.display() ▸ #title]
  })
  body
}

// Verbatim line: said aloud, close to word for word.
#let say(body) = block(
  above: 6pt,
  below: 6pt,
  inset: (left: 8pt, y: 2pt),
  stroke: (left: 1pt + accent),
  text(style: "italic")["#body"],
)

// Physical action: done, not said.
#let do(body) = block(above: 4pt, below: 4pt, text(fill: muted)[[#body]])

// Conditional the teacher resolves at a glance: read one line, skip the rest.
#let branch(label, body) = block(above: 3pt, below: 3pt)[
  #text(weight: "bold")[[#label]] #body
]

// House convention, not in the rulebook. Marks the line and footnotes the why.
#let houserule(note) = footnote(numbering: _ => "°", note)

// Self-evident rule: a principle that collapses several edge cases.
#let rule(lead, body) = block(above: 6pt, below: 3pt)[*#lead* #body]

// Genuine exception, trigger-and-ruling form.
#let exception(trigger, ruling) = block(above: 3pt, below: 3pt)[
  *#trigger* #h(4pt) #sym.arrow.r #h(4pt) #ruling
]

// Unverified value: a visible gap beats a guess on a printed sheet.
#let gap(what) = text(fill: muted)[⟨check #what⟩]

// Labeled strategy signpost: payoff structure, never prescribed moves.
#let strategy(body) = block(
  above: 8pt,
  below: 8pt,
  inset: 8pt,
  stroke: hairline,
  {
    text(
      size: 7.5pt,
      fill: muted,
      tracking: 0.08em,
    )[STRATEGY SIGNPOST · payoff structure, not moves]
    v(2pt)
    body
  },
)

// Expansion patch keyed to a spine step: +4a insert, ~4 amend, =4 replace.
#let patch(key, body) = block(above: 8pt, below: 4pt)[
  #box(inset: (x: 4pt, y: 1pt), stroke: hairline, text(
    weight: "bold",
    size: 9pt,
    key,
  ))
  #h(4pt) #body
]

// Provenance: a table deserves to know what's official.
#let official = [◆ official]
#let fanmade = [◇ fan-made]

#let section(title) = {
  block(above: 12pt, below: 4pt, {
    text(weight: "bold", size: 11pt, title)
    v(2pt)
    line(length: 100%, stroke: hairline)
  })
}

#let new-sheet(label) = {
  pagebreak()
  beat-counter.update(0)
  block(below: 6pt, text(
    size: 8pt,
    fill: muted,
    tracking: 0.08em,
    upper(label),
  ))
}

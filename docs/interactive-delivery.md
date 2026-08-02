# Interactive delivery (iPad)

An open question, not a decision. This records what changes if a Teach also ships
as something you hold at the table.

## The one real change

Every convention in `teach-format.md` already encodes a conditional: `[3P]`
branches, `°` house rules, `+4a`/`~4`/`=4` patches, `◆`/`◇` provenance. On paper
the teacher resolves those with their eyes, line by line, every time they read
the sheet. The expansion doc already says the goal: "the teacher resolves that
once at setup and then reads a fixed path."

A screen makes that literal. Branch resolution moves from read-time to
select-time. You pick 3 players, Pantheon, and Agora once, and everything that
doesn't apply is gone.

Everything below follows from that. The content doesn't change. The conditions
have to stop being typography and start being data.

## Conditions as data

Today `#branch[3P][Drop the left/right phase...]` carries the condition in a
string a human reads. It needs a predicate a program can evaluate:

```
kind = "branch"
when = { players = [2, 3] }
body = "Drop the left/right phase and play fully co-op for a group high score."
```

Keep the predicate language dumb. Three keys cover every branch in the repo
today: `players` (a list of counts), `modules_all` (every named module must be in
play), and `modules_none` (none of them may be). Add `first_game` for the
coached-first-turn material. Resist a general expression evaluator, because the
moment conditions need debugging the format has failed.

One distinction matters more than it looks. Some blocks are irrelevant at the
wrong config (`[2P]` at a 3-player table) and some are the only place a rule
gets stated, with the branch merely changing a number. The first can be hidden.
The second can't, or filtering silently deletes rules. So conditions carry a
mode: `only-when` hides, `emphasize-when` keeps the block and marks which line
applies. Default to `emphasize-when` and demote a block to `only-when`
deliberately.

## Patches become composition

On paper a patch sheet lies beside the spine and the teacher merges them. On a
screen the merge has to be mechanical, which means the resolution order needs
stating:

1. Apply `=n` replacements first
1. Place `+na` inserts after their target step, in module declaration order.
   Inserts run before amendments because an amendment can target an inserted
   step, which is what Solo + Pantheon's `~2a` does to Solo's `+2a`
1. Apply `~n` amendments, in module declaration order. A replaced step is void,
   so an amendment aimed at one is dropped, and every drop gets reported rather
   than silently swallowed

The interesting case is the one the format already found: the Pantheon+Agora
Decision card count exists only at the intersection. That's a block whose
`modules_all` names both modules, which the predicate handles without a special
case. The thing the predicate can't handle is the absence of such a block. Two
modules amending the same step with no verified combination entry is exactly the
situation `⟨check rulebook⟩` exists for, so each game carries a
`verified_combinations` list and any selected stack outside it renders a banner
above the teach. Paper forces you to see two patch sheets and notice the
conflict yourself. Composition hides that, so the app has to be loud.

## One source, two renderers

Don't fork the content into a print format and a screen format. They will drift
within a month.

Typst reads structured data at compile time (`#toml("game.toml")` returns a
dict), so the direction that costs least is to move the content into a typed
data file per game and turn `template/teach.typ` into a renderer over it. The
styled functions survive unchanged, `beat()`/`say()`/`do()`/`branch()` become the
things a dispatch loop calls per block, and the print pipeline is untouched. The
web build is then a second renderer over the same file, and neither one is
generated from the other.

Block bodies stay prose strings, `eval`'d as Typst markup with a scope holding
the inline helpers (`gap`, `official`, `fanmade`), so `#gap[fan rules PDF]` works
inside a body. The subset in use is bold, emphasis, and those helpers, which a
web renderer can cover without a Typst parser. Keeping to that subset is a
standing constraint on authoring.

The alternative is keeping `.typ` as source and pulling structure out with
`typst query` over embedded `#metadata` elements. It avoids the content
migration, and it fails on the part that matters, because the conditional
content is prose rather than metadata and would end up living in both places.

The migration cost is real: six games rewritten into the data format. The
template work and the format itself carry over whole.

## Worked example: 7 Wonders Duel

`teaches/7-wonders-duel/7-wonders-duel.toml` is the data file,
`template/render.typ` is the renderer, and `7-wonders-duel.typ` is a seven-line
entry point. Config comes from `sys.inputs`, so no inputs builds the paper view
(base spine plus a section per module, which is what the patch sheet has always
been) and a config builds one resolved path:

```sh
typst compile --root . teaches/7-wonders-duel/7-wonders-duel.typ out/7wd.pdf
typst compile --root . --input players=1 --input modules=solo,pantheon,agora \
  teaches/7-wonders-duel/7-wonders-duel.typ out/7wd-solo.pdf
```

The solo-plus-both-expansions build is the one to look at. Step 1 is replaced by
Solo, and the `[2P]` note under it disappears on player count. Step 2 carries two
amendments, one from Pantheon and one from the Solo + Pantheon + Agora
intersection, each labeled with the module it came from so the teacher can see
why the line is there. Steps 2a and 2a′ are inserted, and 2a carries three
amendments from two different module pairs. Step 3 is replaced by Solo and then
followed by Pantheon's inserted 3a.

Two things the example proved out. Selecting Pantheon and Agora at two players
raises the unverified-stack banner, because no combination entry exists for that
pair, which is honest rather than a bug. And the diagnostics caught an authoring
mistake on the first run: Solo's provenance note was keyed as `~1` while Solo
itself replaces step 1, so the note got dropped and reported. It belongs as a
child of the replacement, which is where it now lives.

Three limits worth knowing. An insert must target a spine key rather than
another insert. Two modules amending the same step stack in file order with no
merge. And `beat()` grew an optional `key` so a spine can use stable authored
numbers instead of the counter, which is the only change to the existing
template.

## What the screen earns

Filtering is the request, and it's the smallest of the wins.

Mid-game arbitration is the biggest. The back-side exception table is a lookup
surface, and on a screen it's a search that already knows the config, so a
question during a Pantheon game never surfaces a base-game ruling that the
module replaced. That alone justifies the build.

The rolling teach becomes possible, which paper can't do. `research/05` describes
John Company's deferral markers ("London Season, skip in round 1, explain
later"). A screen can hold that deferral and surface it at the top of round 2
instead of trusting the teacher to remember. This is the open item in the
template's variant list.

Two smaller ones. The never-say layer becomes tap-to-reveal rather than a
separate side, so teacher-only rationale sits inline without being readable by a
player looking over a shoulder. And the per-player icon sheet (Pax Pamir's third
sheet) can go to players' own phones by QR instead of being printed one per
person.

## What the screen costs

An iPad puts a screen between the teacher and the table, and the whole point of
the format is a glanceable artifact. Guardrails:

- One beat per screen, no scrolling inside a beat. The fixed half-letter panel
  is what forces the editing a Teach needs, and if the panel budget disappears
  the sheets get flabby. Re-impose it as a beat budget
- Print stays the primary artifact. Anyone can print a PDF, and the app is one
  more renderer that can be skipped
- Offline first. A single self-contained HTML file per game, added to the home
  screen, no server and no accounts. Table wifi is not a dependency worth taking
- A "show all branches" toggle for the teacher preparing, so the config screen
  never hides content from the person who needs to see the whole shape

## Build order

1. Done: the data format, the renderer, and 7 Wonders Duel, taken first because
   its patch stack exercises every composition rule at once
1. Retire `patches.typ`, which the data file now reproduces, so the same content
   stops living in two places
1. Migrate one prose-heavy game (Wavelength, the smallest) to prove the block
   kinds hold real teach content and not just patch keys, then the rest
1. Write the web renderer over the same files, config screen first, arbitration
   search second, rolling-teach deferrals last

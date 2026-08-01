# Teach format

A Teach has three content types, and they should look different on the page:

- Say verbatim:
  the handful of load-bearing sentences where paraphrase loses precision and
  causes a rules argument twenty minutes later.
  "Numbers, not words" for Wavelength, the scoring formula for Looot, the
  two-ways-to-win framing for Pax Pamir.
  Budget about six lines per game
- Say however you like:
  the connective tissue, written as beats.
  This is the default and most of the sheet
- Never say:
  deferred edge cases and teacher-only rationale, like why interception waits
  until round two.
  This section is what makes a sheet re-teachable months later instead of just
  readable once

## Structure per game

1. Win condition first, then the loop that reaches it, in three to five beats
1. A coached first turn with open hands, built into the beats
1. Strategy signposts where the game needs them, labeled as such (payoff structure
   and decision framing, never prescribed moves)
1. A back side that opens with the self-evident rules, then the short list of
   genuine exceptions in trigger-and-ruling form

Sort the exceptions by when they fire.
Decrypto's genuine exceptions are all endgame-only, so a during-play block above
a scoring block works.
Risk:
Europe and Pax Pamir fire exceptions mid-game, so they group by phase.
Let the sort follow the game rather than forcing one scheme.

## Conventions

- Bracketed labels for any conditional the teacher resolves at a glance:
  `[3P]` for player count, `[Rome]` for a faction offset.
  Read the line that applies, skip the rest
- `°` marks a house rule folded into the text, with a one-line footnote.
  It exists so the teacher can answer "that's not in the rulebook" instantly, and
  players never notice it
- `⟨check rulebook⟩` marks a value I could not verify.
  A visible gap beats a guess on a printed sheet
- A provenance marker for fan-made material, like 7 Wonders Duel's solo mode.
  The table deserves a straight answer about what's official

## Sheets scale by reader, not by length

A game earns another sheet when it acquires another audience:

1. The teacher performing the teach
1. The teacher arbitrating mid-game
1. The players, when the barrier is icon literacy rather than rules (print one per
   person)

Wavelength and Decrypto will never need more than the first two.
Pax Pamir needs all three.

## Expansions are keyed patches

An expansion sheet lists edits keyed to the base teach's stable spine numbers
("replace step 2", "insert after step 4"), never an appended page.
Pantheon amends 7W Duel's setup, so an appended page would teach a setup that
never happens.
Patches don't compose automatically either:
the Pantheon+Agora solo stack has a rule that exists only at the intersection,
so each patch sheet enumerates the owned combinations it has been checked
against.

## Print pipeline

Markdown is the source of truth.
Typst does layout, either through Pandoc (`--to=typst --pdf-engine=typst`) or a
native template defining `say()`, `do()`, `branch()`, `rule()`, `exception()`,
and `patch()` as styled functions.

Imposition is a separate post-process, so one set of logical panels can become
any fold style:
`pdfimpose` names fold schemas directly, and `pdfjam --booklet true` covers the
half-fold.
The consequence for authoring is a fixed panel budget per game rather than
free-flowing text, which forces the editing a Teach needs anyway.

Low-ink is a styling discipline enforced in the template:
hairline rules instead of filled bars, no dark table headers, line-art diagrams
only, grayscale plus at most one accent.

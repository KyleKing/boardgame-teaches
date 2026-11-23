# boardgame-teaches

Teacher-facing scripts ("Teaches") for the games I own, kept as plain text and
built into printable sheets.

Rulebooks are arbitration documents, written for mid-game lookup.
Board Game Arena tutorials teach a learner sitting alone at a screen, and videos
teach passively.
None of them help the person standing at the table who has to get four people
playing in ten minutes, and almost nobody publishes that script.
So I'm writing my own, starting with Looot, Long Shot: The Dice Game, Risk: Europe, Wavelength, Decrypto, and Pax Pamir 2e.

## What a Teach optimizes for

A Teach gets players making real decisions as early as possible, with enough
guidance that those decisions are their own.
Most instructions and tutorials miss that second half.
They either dump every rule up front or hide the payoff structure, so a first
game becomes four turns of guessing what matters.

The working principles:

- Teach backwards from the win condition, then show the loop that reaches it
- Progressive disclosure:
  chunk the game, announce the chunks, and reveal each rule at the moment it
  becomes live.
  Wavelength's left/right bet is taught right before the first reveal, not during
  setup, and scoring lands better as a reveal than a preamble
- Run a coached first turn with open hands instead of finishing the lecture.
  People learn faster when making real choices
- Signpost decisions instead of prescribing moves.
  The standard advice says never teach strategy, since it biases the game and
  steals the fun of working it out.
  I split that rule in two.
  Never say "open with X".
  Always say what a choice pays off, because players can't make independent
  decisions if they can't see the payoff structure.
  "Looot scores (base + bonuses) × quantity, so collecting a bit of everything
  loses" is orientation, not coaching.
  For a genuinely opaque opening like Pax Pamir's, a labeled strategy section is a
  deliberate exception, not a slip
- Don't narrate what components already say.
  For Risk: Europe, "read your two cards, ask me about any icon" replaces four minutes of
  explanation.
  Reading dense text while listening to the same content adds load rather than
  removing it (the redundancy effect)
- Most edge cases are consequences of a rule nobody stated.
  Write the rule ("intercepting is free", "success earns nothing") and the
  exception table collapses to the few genuine trigger-and-ruling entries

## Layout

- `teaches/<game>/<game>.typ` is the source for each game, plus any expansion
  patch files
- `template/teach.typ` defines the styled functions (`beat`, `say`, `do`,
  `branch`, `rule`, `exception`, `strategy`, `patch`) and the low-ink page
  setup
- `template/render.typ` renders a `<game>.toml` data file, either as the paper
  view or as one path resolved for a player count and module list.
  7 Wonders Duel is the worked example; see `docs/interactive-delivery.md`
- `docs/teach-format.md` defines the format:
  content types, conventions, sheet scaling, and the print pipeline
- `exports/` keeps the original markdown drafts from the design session
- `research/` holds the numbered research chapters behind the format:
  pedagogy, script styles, history, video teaches, interactive teaching, and
  the evaluation rubric
- Generated PDFs land in `out/` and stay untracked

Typst is the authoring format because the content types carry semantics that
plain markdown can't hold.
Panels are half-letter, so a duplex letter sheet imposes to a half-fold
booklet.
Tooling runs through mise and hk (`hk install --mise` once per clone):

```sh
mise run build            # compile every game to out/
mise run watch wavelength # recompile one game on save
mise run format           # typstyle + mdformat + taplo
mise run spell            # typos
```

## Games

| Game           | Status                                                      |
| -------------- | ----------------------------------------------------------- |
| Decrypto       | final, ready for a table test                               |
| Long Shot      | draft, needs the odds column and bet cap from the rulebook  |
| Looot          | final, watchtower chaining through a tower is unconfirmed   |
| Pax Pamir 2e   | final, three sheets                                         |
| Risk Europe    | final, needs the 3-player crown target from the rulebook    |
| Wavelength     | final, ready for a table test                               |
| 7 Wonders Duel | patch keying final, line items unverified against my copies |

The original drafts are archived in `exports/`, from
[this design session](https://claude.ai/chat/2e675106-c0ba-4515-a109-102028308202)
with the finalized versions now in `teaches/`.

## Sources

- [Forbes Advisor on teaching backwards from the win condition and coached first turns](https://www.forbes.com/advisor/t/how-to-teach-board-games/)
- [BoardGameGeek: a professional educator on chunking and cognitive load](https://boardgamegeek.com/thread/3430117/teaching-games-a-professional-educators-perspectiv)
- [Hobbystack on deferring exceptions and watching the table](https://hobbystack.net/guides/board-games-beginners-guide)
- [My Kind of Meeple on balancing awareness of options against strategy tips](https://mykindofmeeple.com/teaching-board-games-to-new-players/)
- [Don't Eat the Meeples on agency and letting players probe the mechanics](https://donteatthemeeples.substack.com/p/nine-tips-for-teaching-board-games)
- [Exhaustion Austin on cognitive load theory and rulebooks](https://exhaustionaustin.blog/2023/03/21/cognitive-load-theory-and-board-game-rules/)
- [UXPin on progressive disclosure](https://www.uxpin.com/studio/blog/what-is-progressive-disclosure/)

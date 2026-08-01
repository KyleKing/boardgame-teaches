# 3 · A short history of teaching board games

How the hobby got from rules-as-legal-code to tutorial campaigns and teach scripts, and which artifacts each era shipped.

## Wargame era: rules as legal code

Hobby wargames (Avalon Hill, SPI, 1960s–70s) organized rules in the "case system": numbered sections (1.0, 2.0) with decimal cases and lettered sub-cases, a deliberately legalistic format built for adjudication rather than onboarding. Most hex-and-counter publishers still use it. Jim Dunnigan's Wargames Handbook codified the era's practice. ([BGDF discussion](https://www.bgdf.com/node/12917), [Blood and Spectacles on layouts](http://bloodandspectacles.blogspot.com/2022/01/wargame-design-rules-lay-outs.html), [Wargames Handbook](https://en.wikipedia.org/wiki/The_Complete_Wargames_Handbook))

The relevance here: the case system is the purest arbitration document ever shipped. Nobody ever taught a game by reading section 7.3.2 aloud, and the format never pretended otherwise. The modern one-rulebook Euro tries to be both documents at once and does each job worse.

## Euro era: structured, example-driven rulebooks

Eurogames (crystallizing around the Spiel des Jahres from 1979) "can be learned easily and played in a relatively short time" ([Wikipedia](https://en.wikipedia.org/wiki/Eurogame)); Stewart Woods' *Eurogames* (McFarland, 2012) is the scholarly treatment of the shift. Modern rulebook craft (setup-first ordering, worked examples in boxes, component illustrations) is documented in practitioner guides. ([Brandon the Game Dev](https://brandonthegamedev.com/how-to-make-the-perfect-board-game-rule-book/), [Nerdlab](https://nerdlab-games.com/065-how-to-write-a-board-game-rulebook/))

## The two-book split: Fantasy Flight's Learn to Play

The split predates the branding: BattleLore 2e (2013) shipped a Rulebook plus a Reference Book, where the rulebook "intentionally omits many rules exceptions" and the Reference Book overrides it on conflict ([Reference Book PDF](https://images-cdn.fantasyflightgames.com/filer_public/56/4a/564af135-a274-4e43-8ccf-9db70d41f02b/bt01_reference_book_web.pdf)). The branded pairing arrived with Star Wars: Imperial Assault (November 2014): a Learn to Play booklet walking chronologically through setup and a first game, and a Rules Reference that "addresses complex and unusual gameplay situations" as an alphabetical glossary listing the basic rule first, exceptions after. ([Learn to Play PDF](https://images-cdn.fantasyflightgames.com/filer_public/84/fc/84fcff54-eafe-45ec-acf4-538a86e1acfc/imperial_assault_learn_to_play_guide.pdf), [Rules Reference PDF](https://images-cdn.fantasyflightgames.com/filer_public/ef/86/ef866943-534b-429e-b8db-7d99875431b7/imperial_assault_rules_reference_guide.pdf), [FFG's Rules Reference Debrief](http://drafts.fantasyflightgames.com/en/news/2021/5/18/rules-reference-debrief/))

X-Wing added a third tier in 2nd edition (2018): a Quickstart that teaches fundamentals through scripted mini-scenarios before the full rules ([Quickstart PDF](https://images-cdn.fantasyflightgames.com/filer_public/3d/8a/3d8aa96d-1424-4049-8763-193fc70aee6d/swz01_quickstartweb.pdf)). The model spread industry-wide (Twilight Imperium 4, Marvel Champions, non-FFG publishers). Reception is positive on learnability, with the recurring complaint that mid-game answers require knowing which book to check. ([FFG community thread](https://community.fantasyflightgames.com/topic/279098-the-20-rule-book/))

This is the closest a publisher has come to admitting the two-jobs problem in print. What the split still lacks is the third document this repo exists for: the Learn to Play book teaches a learner reading it, not a teacher performing to a table.

## Tutorial-first products

- Gloomhaven: Jaws of the Lion (2020): the rulebook is an interactive tutorial spanning scenarios 1–5, simplified starting decks, rules introduced per scenario. "It is encouraged that you play as you read this book." ([rulebook PDF](https://cdn.1j1ju.com/medias/c1/6f/d7-gloomhaven-jaws-of-the-lion-rulebook.pdf), [official tutorial videos](https://cephalofair.com/pages/gloomhaven-jaws-of-the-lion-tutorial-videos)) See chapter 5 for its late-joiner weakness
- Charterstone (2017): early design taught everything from unlockable cards ("read card #1"); testing showed pure card-by-card teaching caused missed rules, so the final game mixes a base rulebook with rules unlocked via crates. ([Stegmaier's account](https://stonemaiergames.com/games/charterstone/rules/))
- My City (2020): 24 episodes in 8 chapters, each envelope adding a rules sheet. Knizia: "Each chapter of 3 games comes with a secret envelope full of new buildings, cards and stickers." ([knizia.de](https://www.knizia.de/my-city-our-legacy-game/), [interview](https://www.tabletopgaming.co.uk/features/city-limits-reiner-knizia-on-my-city/))
- Fog of Love (2017): a pre-stacked tutorial scenario where rules surface as tutorial cards appear in play, with corner numbering to rebuild the deck for the next new player. ([tutorial card order](https://boardgamegeek.com/filepage/178220/tutorial-card-order))
- Mice and Mystics (2012): campaign rules delivered through a storybook, an early mainstream case of narrative-embedded rules. ([storybook PDF](https://cdn.1j1ju.com/medias/8d/d8/cd-mice-and-mystics-storybook.pdf))
- SpaceCorp (2018): three eras layering new capabilities on one core, "a bit like a game coming with modular expansions, that are gradually added in." ([GMT](https://www.gmtgames.com/p-904-spacecorp-2nd-printing.aspx), [Punchboard review](https://punchboard.co.uk/spacecorp-gmt-board-game-review/))

The shared idea is progressive disclosure made physical: the components themselves meter the rules. The shared costs are authorship (someone must sequence every unlock) and the assumption that the same people sit through the whole sequence.

## Digital teaching layers

- Dized (2018): interactive tutorial app, "players are guided through their play sessions without any previous knowledge of the board game, much like how video games teach players today." Tutorials were made in-house, a stated bottleneck the Kickstarter aimed to fix with publisher-facing tools. ([press release PDF](https://dized.com/wp-content/uploads/2018/08/2018-08-14-ea-kickstarter-pressrelease.pdf), [company history](https://getdized.medium.com/our-journey-of-creating-the-board-game-companion-app-dized-2231a802a83))
- Board Game Arena launched community-authored interactive tutorials in January 2022, about 130 games at announcement: "We love board games, we love enjoying new board games, but we (often) dislike reading rulebooks." ([BGA announcement](https://en.boardgamearena.com/news?id=572))
- Tabletopia is deliberately the opposite: a sandbox with no rules enforcement, so players must learn elsewhere first. ([Tabletopia FAQ](https://help.tabletopia.com/knowledge-base/faq/))
- Watch It Played (running since ~2012) became a de facto official channel: publishers commission videos and clear rules questions, making videos often more current than the rulebook. BGG maintains a family category for games with Watch It Played videos. ([BGG family](https://boardgamegeek.com/boardgamefamily/78198/misc-watch-it-played-how-to-videos), [interview](https://nerdsonearth.com/2015/09/interview-rodney-smith-of-watch-it-played/)) See chapter 4

## "The teach" as social practice

The noun is recent. SU&SD's 2011 guide consistently says "rules explanation," never "the teach" ([Our Guide to Rules Explanations](https://www.shutupandsitdown.com/our-guide-rules-explanations/)). By their February 2020 video "How To Teach Board Games Like a Pro," the teach is a noun, "the stumbling block that has seen a many an evening of potential jolly cardboard fun veer off-course" ([SU&SD](https://www.shutupandsitdown.com/videos/how-to-teach-board-games-like-a-pro/)). So the usage spread through hobby media during the 2010s (an inference bracketed by those two sources, not a sourced etymology). It's contested jargon: a 16-page December 2024 BGG thread argues ["'The Teach' must be stopped"](https://boardgamegeek.com/thread/3429103/the-teach-must-be-stopped).

Around the word grew a practice: SU&SD's canonical order (theme, then win and end conditions, then one turn with real pieces), trained demo teams like Double Exposure's Envoy program representing 75+ publishers ([Envoy](https://www.dexposure.com/envoy/)), Gen Con's ticketed Learn to Play events, and store demo culture where being taught by a person is the norm.

## What the history says for this project

Every era solved the reader it cared about: the case system served the arbitrator, the Euro rulebook the first reader, Learn to Play the solo learner, tutorial campaigns the returning group, videos the couch. The teacher performing at a table has never been a commercial audience, which is why teacher-facing scripts remain fan work, and why the sheets-scale-by-reader rule in this repo treats the teacher as two distinct readers (performer and arbitrator) that publishing history kept collapsing into one.

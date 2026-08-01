#import "../../template/teach.typ": *

#show: teach-sheet.with(
  title: [7 Wonders Duel expansion patches],
  meta: [patches keyed to the base spine · +N insert after step N · \~N amend step N · =N replace step N · #official / #fanmade],
  legend: false,
)

#section[Base spine (keys only)]

The branch here isn't player count, it's which modules are on the table. Resolve that once at setup, then read a fixed path.

+ Goal: three ways to win: military advance, six science symbols, or most points at the end of Age III
+ Setup: wonders draft, three age decks, progress tokens
+ The card pyramid: take an uncovered card, build it, discard it for coins, or bury it under a wonder
+ Age transition and who chooses first
+ Scoring

#section[#official Pantheon]

#patch(
  "~2",
)[Setup changes, not adds: mythology tokens and offerings enter the age setups. This patches step 2 rather than appending a step. Stapled to the end, it would teach a setup that never happens.]

#patch(
  "+3a",
)[The divinities row: a parallel economy with its own currency and its own timing.]

#section[#fanmade Solo]

#patch(
  "=1",
)[Goal restated: you play against a Leader with scripted behaviour, not an opponent making choices.]

#patch("+2a")[Choose a Leader as your opponent.]

#patch(
  "=3",
)[The opponent's turn is driven by Decision cards rather than decisions. A replacement, not an amendment: the core loop is different.]

Worth saying at the table: the solo mode is a fan print-and-play built around Leaders and Decision cards, not an official mode. Well-regarded, but a player asking "is this how the designer intended it?" deserves a straight answer.

#section[#fanmade Solo + Pantheon]

#patch(
  "+2a′",
)[Three additional Leaders available as opponents (Caligula, Sappho, Imhotep), using progress tokens and extra turns. #gap[fan rules PDF]]

#patch(
  "~2a",
)[Some Decision cards are updated when Pantheon is in. #gap[fan rules PDF]]

#section[#fanmade Solo + Agora]

#patch(
  "+0",
)[No new Leaders. Agora's progress tokens have no effect for the Leader, but base and Pantheon Leaders interact with the senate and decrees. #gap[fan rules PDF]]

#patch(
  "~2a",
)[Interaction patch only: the Leader's turn gains senator cards and influence cubes via Decision cards. #gap[fan rules PDF]]

#section[#fanmade Solo + Pantheon + Agora]

#patch(
  "~2",
)[The one genuinely combinatorial patch, a setup line that exists only when both modules are present: merge the Decision cards from both expansions (3 with the Pantheon icon, 5 with the Agora icon, 4 with none). #gap[fan rules PDF]]

#section[Caveat]

The line items above are illustrative, drawn from secondary sources; verify each against your own copies before printing. The keying convention is the deliverable, and its lesson is that patches don't compose: a rule can exist only at the intersection of two modules, so a patch sheet needs its own combination section listing the combinations you actually own.

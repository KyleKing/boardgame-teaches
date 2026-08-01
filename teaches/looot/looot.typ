#import "../../template/teach.typ": *

#show: teach-sheet.with(
  title: [Looot],
  meta: [Gigamic, 2024 · 2–4 players · ends when everyone has placed all 13 Vikings · most points wins],
  legend: true,
)

#beat[Goal and the formula, before turn one][
  Place all 13 Vikings, harvest the fjord, biggest score wins. The scoring is the entire game, so it comes first:

  #say[Every type scores base value plus your longship bonuses, times how many you own. It's multiplicative. A bonus is worthless without quantity, and quantity is worth little without bonuses.]

  Walk the rulebook's own example with real tiles: castles have a base of 4; with two castle bonuses of +3 and +4 that's 11, times 3 castles = 33 points. Spreading across all six types gives you small numbers times small numbers. Pick two, maybe three, and stack.
]

#beat[Setup, quickly][
  Landscape boards slotted together, 2 Houses, 2 Watchtowers, 3 Castles on their marked spaces. Trophy board on one edge, 5 Trophies ascending. Ocean board on another: 30 Longships in the bag, 5 face up. Each player: a Fjord board, 13 Vikings, 3 Shields, one each of Port, Altar, and Jarl Palace site tiles, face up. Northernmost player starts.
]

#beat[The placement rule alone][
  Place one Viking on the shared board, adjacent to any Viking of any colour or to a Longship, never on a resource space another Viking occupies. Take that resource from the reserve and place it on an empty space of your own Fjord. It never moves again.

  #do[Everyone does one turn. Say nothing about buildings yet.]

  The double-bookkeeping to flag immediately: Vikings go on the _shared_ map, everything they earn goes on _your private_ Fjord. New players keep trying to build in one place.
]

#beat[Capture when someone's placement triggers it][
  Houses first, they happen naturally: a Viking adjacent to a House takes 1 tile. Then introduce the rest as the same idea plus a chain. Two watchtowers connected by a chain of your Vikings pay 1 tile each (recapturable only via a different partner tower). A chain of 4+ with one Viking adjacent to a castle pays a castle tile; 8 in the chain pays a second, 12 a third.
]

#beat[Longships, shields, trophies, at end of turn][
  All optional, one each per turn: take a Longship (draw a replacement immediately), spend a Shield, claim a Trophy.

  #say[A longship is a contract, not a gift. Fill its three resources adjacent to it on your Fjord and it pays a bonus. Leave it unfilled and it's minus five.]

  Shields are three one-shots: place a second Viking, place onto an occupied space, or take 2 resources instead of 1. Trophies cost Axes, are ascending, and are one per player, ever.
]

#strategy[
  Fjord space is the real constraint, not Vikings: every tile is permanent, and sites and longships need specific things adjacent. Read your Fjord's geometry before the first placement, not after the fifth.

  Decide early whether you're a castle player. A 12-Viking chain is nearly your whole supply of 13; it's a whole-game commitment, not a mid-game pivot.

  Houses are the reliable engine (bare adjacency, no chains). Watchtowers need you to scout which pairs are reachable. Axes score nothing on their own; they're trophy currency and construction material, the most misvalued tile in the box. And spend your Shields: dying with them unused is the most common first-game mistake.
]

#new-sheet[Back · rules first, then the genuine exceptions]

#section[These answer most questions]

#rule[Tiles never move.][Once placed on your Fjord, ever.]

#rule[Any colour counts for adjacency.][Placing next to an opponent's Viking, or next to the Ocean board's Longships, is always legal.]

#rule[Axes score nothing alone.][Trophy currency and construction material only.]

#rule[One trophy per player, per game.][Ascending, so waiting means a worse one or none.]

#section[Genuine exceptions]

#exception[Your Fjord is full][you still must place Vikings but take no more tiles. This can arrive early and quietly]

#exception[Occupied resource space][no placement there, unless you spend a Shield]

#exception[Reserve runs out of a resource][take whatever remains]

#exception[Same watchtower again][only by connecting it to a different watchtower]

#exception[Second and third castle tiles][each needs a longer chain (8, then 12), not a repeat of the same chain]

#exception[Construction sites][required resources and buildings adjacent in any arrangement, then flip]

#exception[Trophy claim][needs at least as many Axes as shown]

#exception[Tie at game end][highest-value Trophy wins; no trophy on either side is a shared victory]

#section[Scoring recap]

(base + your bonuses for the type) × quantity, summed over types, plus completed construction sites and your trophy, minus 5 per unfilled Longship. Base values: castle 4 (rulebook example); wood, sheep, gold, houses, and watchtowers are printed on the scorepad: #gap[scorepad base values].

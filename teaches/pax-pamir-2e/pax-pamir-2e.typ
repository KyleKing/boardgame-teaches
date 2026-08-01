#import "../../template/teach.typ": *

#show: teach-sheet.with(
  title: [Pax Pamir 2e],
  meta: [1–5 players · win with a 4+ point lead after any Dominance Check, or most points after the fourth · sheet 1 of 3: the teach],
  legend: true,
)

#beat[Goal and length, before anything else][
  Afghan leaders after the Durrani collapse; Britain and Russia are meddling. Points come from Dominance Checks. There are four, seeded in the bottom four piles of the deck, so the game has a known, finite length from turn one. The fourth ends the game and scores double.

  #say[Two ways this ends. Lead everyone by four points after any check and you win on the spot. Otherwise it runs to the fourth check and most points wins.]
]

#beat[Pick a loyalty][
  Three coalitions: British, Russian, Afghan.

  #do[Each player chooses, starting with a random player]

  #say[Switching sides later costs you every gift and prize you're holding. Right now you're holding none, so it's free today and brutal in twenty minutes.]
]

#beat[The market: do this live, don't describe it][
  #do[Everyone takes a real turn here. Purchase, then play.]

  - Two rows, six columns, filled leftmost column first. Leftmost column is free
  - Cost = column number, paid as one rupee onto each card to its left in the same row
  - You collect any rupees already sitting on the card you take
  - Playing a card puts it in your court at either edge, and its impact icons fire immediately
  - Everyone starts with 4 rupees; the favoured suit starts on Political

  #say[You can't buy a card you just put a rupee on. That's this turn only.]
]

#beat[Your court is your action menu, and the free-action reveal][
  Two actions a turn, fewer allowed: purchase, play, or a card action (Tax, Gift, Build, Move, Betray, Battle). One action per card per turn, however many icons it shows.

  #say[Now the important part. One suit is always favoured; it starts on Political. Actions on cards matching the favoured suit are free. They don't count against your two.]

  So a stacked court takes five or six actions a turn, which is why the cards that change the favoured suit get fought over.

  #say[And when Military is favoured, every card in the market costs double.]
]

#beat[The map, and the rule that couples it to your cards][
  Cylinders are tribes (yours); blocks are armies in regions and roads on borders. Ruling a region means most pieces there, and ruling gates Build (2 rupees per unit) and taxing players.

  #say[These two are a pair, and they're how people attack you. Lose your last tribe in a region and every political card you hold from that region is discarded. Lose your last political card from a region and all your tribes there come off the board.]
]

#beat[Dominance Checks: the standing question][
  Fires when a Check card is bought, or discarded off the leftmost column. Dominant means one coalition has 4+ more blocks than each other coalition.

  If a coalition dominates: only players loyal to it score, 5 / 3 / 1 by influence (1 + patriots + gifts + prizes). Then every block comes off the map.

  If none dominates: everyone scores by cylinders on the board, 3 for most, 1 for second. Blocks stay.

  #say[So before you spend anything, look at the map and ask which of those two is coming. They reward opposite things. People lose this game buying influence for a check that never succeeds.]
]

#strategy[
  This back page is coaching, which is normally bad practice. It's a labeled exception because Pax Pamir's opening is genuinely non-obvious and three wasted turns is a lost game.

  Turn 1 is forced, and that's fine: four rupees, empty court, no card actions available. Everyone's first turn is buy a card, then play it. What to want in that card, in order: an action you'll reuse (Build, Tax, or Gift; a one-time impact icon is a bad first pick), Political suit or political stars (favoured right now, and stars raise your court cap), and a region you're willing to commit to.

  Turns 2 and 3: keep building the court. A two-card court has almost no options, and options are the position. Resist the map until three or four cards are down.

  Three traps: don't lock loyalty early (free now, expensive later). Don't hoard rupees without economic stars, unprotected money gets taxed. The scales icon hands you 2 rupees and marks the card Leveraged: discarding it later costs 2 rupees back, or a card per rupee you can't pay.
]

#new-sheet[Sheet 2 · arbitration · rules first, then exceptions by phase]

#section[These answer most questions]

#rule[Rupees are never safe][unless you have economic stars.]

#rule[One action per card per turn,][no matter how many icons it has.]

#rule[Any card you put a rupee on is unbuyable][until next turn.]

#rule[Hand and court limits apply only at end of turn.][Mid-turn, exceed them freely. Court limit is 3 + political stars; hand limit is 2 + intelligence stars.]

#rule[Playing a patriot of another coalition switches your loyalty][whether you meant it or not.]

#rule[Tribes and cards of a region live or die together.][Lose the last of either and you lose the other.]

#rule[A successful check wipes the map.][Everything built in blocks is gone; influence survives.]

#section[Buying and playing]

#exception[Market can't absorb the rupees you owe][excess leaves the game]
#exception[Event card reaches the leftmost column][discarded in cleanup, its top effect hits everyone; the bottom effect fires only if someone buys it]
#exception[Rupees on a discarded event][stay in position and transfer to whatever card slides in]
#exception[Two Check cards in the market at once][resolve one immediately]

#section[Card actions]

#exception[Action costs][pay onto the rightmost cards of both rows, one rupee each]
#exception[Taxing a player][only if you rule a region where they hold a court card; economic stars shield their rupees]
#exception[Build][only in regions you rule]
#exception[Ruler token][enemy coalition armies can block you from taking it]

#section[Discarding]

#exception[Over a limit at end of turn][discard down to it]
#exception[Leveraged card][pay 2 rupees, or discard one card per rupee you can't pay]
#exception[Card carrying spies][spies go home to their owners' supplies]

#section[Scoring]

#exception[Influence ties][add the contested places together and divide]
#exception[Final check][doubles]
#exception[Final tiebreak][most military stars, then most rupees]

#new-sheet[Sheet 3 · player reference · print one per player]

#section[Two actions a turn]

*Purchase* · *Play* · *Card action* (Tax, Gift, Build, Move, Betray, Battle)

Favoured-suit actions are *free*. One action per card per turn.

#section[Stars]

#table(
  columns: (auto, 1fr),
  [*Suit*], [*Effect*],
  [Political], [Court size = 3 + stars],
  [Intelligence], [Hand size = 2 + stars],
  [Economic], [Rupees can't be taxed],
  [Military], [Final tiebreaker],
)

#section[Costs]

Card = its column number · Build = 2 rupees per unit · Gifts = 2 / 4 / 6

#section[Influence]

1 + patriots + gifts + prizes

#section[Dominance Check]

One coalition 4+ blocks ahead → loyal players score 5 / 3 / 1 by influence → all blocks come off the map.

Nobody 4+ ahead → everyone scores by cylinders on the map, 3 / 1 → blocks stay.

Fourth check is the last, and it doubles.

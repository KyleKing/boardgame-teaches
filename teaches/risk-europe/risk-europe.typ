#import "../../template/teach.typ": *

#show: teach-sheet.with(
  title: [Risk: Europe],
  meta: [2–4 players · win by holding enough crowns at the end of any round],
  legend: true,
)

#beat[Goal first][
  #do[Everyone takes an army, war banner, reminder card, 8 King's Orders cards, 5 silver, 1 crown, 1 castle]

  You're medieval monarchs. Crowns win the game: you get them by holding cities, taking other people's cities, or buying them outright.

  #branch[4P][#say[Hold seven crowns at the end of any round and you win.]]
  #branch[3P][#say[Hold #gap[rulebook: 3-player crown target] crowns at the end of any round and you win.]]
  #branch[2P][Two-player has its own adjustments; read the back page of the rulebook before setup.]
]

#beat[Bid, then place kingdoms][
  Bid for first player: hide any number of your five coins in your fist, all reveal at once. Highest bid pays it and goes first; everyone else keeps their money. Ties roll off.

  In order, each player places completely before the next: pick a Gold Crown City, crown and castle go there, collect its bonus tile and its tax value in coins, war banner on space 1 of the Crown Tracker, and split 10 footmen between that city and one adjacent non-city territory.

  #branch[Rome][Rome starts you one space further up the crown track: banner on space 2.]
]

#beat[The cards teach themselves][
  #say[Don't read your cards to me and I won't read them to you.]

  Look at your eight order cards now. Each has two options and they say what they do. Ask about anything unclear, then we start.
]

#beat[The round structure, before anything else][
  Everyone secretly stacks two order cards, face down. Top card resolves on Turn 1, bottom on Turn 2, and you cannot reorder them. Then all battles resolve at once, first player picking the order. Both cards discard; your hand shrinks every round until all eight are gone, then you take them all back (every fifth round).

  #do[Run a dry round: everyone names their two orders out loud, no resolution. Don't touch combat yet.]

  The consequence to say out loud: the pairing _is_ your plan for the round, and the order inside it decides whether you can afford it. Tax must go on top if you intend to Spend.

  Teach Expand and Tax only. Mention Manoeuvre when someone tries to move inside their own kingdom and discovers Expand won't do it.
]

#beat[Combat when the first battle happens, not before][
  Walk the ranked order live with dice in hand (back of the arbitration sheet). The general attack is the only genuinely fiddly rule in the box, and it makes sense instantly with real units on the table.
]

#strategy[
  The economy is the real weapon: a disputed territory pays no tax and severs supply lines through it, so one throwaway attack on a middle territory can split a kingdom and halve its income. Expanding into a territory you don't intend to hold is often better than a real assault.

  Pairings, and what they pay for: *Tax → Spend* is the economy round and the default opener. *Spend → Expand* buys the stack and pushes it out. *Expand → Expand* grabs land fast but you fight next round broke. *Expand → Manoeuvre* attacks, then reinforces the dispute before it resolves (you can manoeuvre into a dispute, never out). *Manoeuvre → Expand* consolidates a big stack, then hits with all of it.

  First-round priorities: an unclaimed adjacent city is a free crown plus its tax value and will not be there on round three. Footmen are the dice engine at cost 1; new players overbuy specialists. A castle (12) on a border can't be attacked without a Siege Weapon (10), the strongest defence in the game and the purchase first-timers skip. Crown cards (10) are a crown with no fighting, one per round, only eight in the game. Siege Weapons are a mid-game key, not an opener.

  Costs: Footman 1 · Archer 2 · Cavalry 3 · Siege Weapon 10 · Castle 12 · Crown Card 10
]

#new-sheet[Arbitration sheet · rules first, then exceptions by phase]

#section[These answer most questions]

#rule[Disputes freeze everything.][A disputed territory pays no tax, severs supply lines through it, and admits no third army for any reason.]

#rule[Committed units never retreat.][No manoeuvring out of a dispute, ever. Only the defender may expand out, leaving units equal to the attacker's count.]

#rule[Cities and castles are never abandoned.][They must keep 1 unit; other territories may empty freely.]

#rule[Purchases land only in your cities and castles,][never into a dispute.]

#section[Expand and Manoeuvre]

#exception[Expanding into an occupied territory][it becomes disputed; battle resolves at end of round]
#exception[Expanding into a castle territory][only if the expanding army includes a Siege Weapon]
#exception[Manoeuvre range][up to 2 territories through your own supply lines; stops immediately on entering a dispute]

#section[Battles]

Both sides roll simultaneously, in ranked order, repeating the whole sequence until one army is gone. Remove casualties before the next rank. Only one side rolls a rank if only that side has those units.

#table(
  columns: (auto, 1fr, auto, auto),
  [*Rank*], [*Unit*], [*Dice*], [*Hits on*],
  [1], [Siege Weapons], [2 per weapon], [3+],
  [2], [Archers], [1 per archer], [5+],
  [3], [Cavalry], [1 per cavalry], [3+],
  [4], [General Attack], [see below], [compare highest],
)

General Attack: attacker rolls 3 dice with 3+ units, 2 with 2, 1 with 1. Defender rolls 2 dice with 2+ units, 1 with 1. Compare highest die from each side; higher scores a hit. Discard that pair, compare the next pair if both rolled two or more. Ties always go to the defender. Max two hits per general attack. Both sides only footmen: skip ranks 1–3 entirely.

#exception[Castle in a disputed territory][defender re-rolls all dice of one rank, each time the ranked order repeats]
#exception[Both armies wiped out][territory becomes unclaimed, crowns return to the reserve]

#section[Purchases and bonuses]

#exception[Crown cards][one purchase per player per round, even with two Spend orders; only 8 exist]
#exception[Castles][captured, never destroyed; one per territory; reserve empty means no more get built]
#exception[King Me bonus][revealer takes the First Player Marker; the last to reveal it that round keeps it and starts the next]
#exception[Siege Assault bonus][2 dice per Siege Weapon, hits on 3+, no defence dice; land only, not from or into disputes]
#exception[Fortify bonus][+3 footmen to a city or +4 to a castle you control; in a dispute only while defending]
#exception[Unusable card][still discards at end of round]

#section[Endgame]

#exception[Two players reach the crown target together][most territories wins, then most coins; the First Player Marker counts as 10 coins]
#exception[Player loses all cities][one grace round to retake one if they hold a crown card, otherwise eliminated; no taxing meanwhile]

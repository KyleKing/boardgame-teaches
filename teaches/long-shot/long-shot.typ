#import "../../template/teach.typ": *

#show: teach-sheet.with(
  title: [Long Shot: The Dice Game],
  meta: [Perplext, 2022 · 1–8 players · ends after the round in which the 3rd horse finishes · most money wins],
  legend: true,
)

#beat[Goal, before anyone touches a marker][
  Most money at the end wins. Four ways to get it, and the sheet in front of you already names them: horses you _own_ pay a purse if they place, _bets_ pay by the odds, a _Helmet plus Jersey_ on the same horse is a \$5 Jockey Set, and leftover cash counts.

  #say[Everyone acts on every roll, but only on the horse that was rolled.]

  That one sentence is the game. Say it now, and say it again on turn one.
]

#beat[Setup, quickly][
  Eight horses behind the line. Market: Horse Cards 1–8 face up, Horseshoe Set for a first game. Each player takes a Starting Card, copies its 4 Concession X's and 2 starting bets onto their board, and returns the card. Write \$12 in Money. Whoever bet on something most recently rolls first.
]

#beat[Round 1 · movement, then Jerseys only][
  #do[Roll both dice. Move the rolled horse by the Movement Die (1–3).]

  Then point at the rolled horse's card: every horse with an X on its Secondary Movement Bar moves 1 space, left to right. Printed X's and player X's count the same.

  Now the limit, live on the first roll: you may act only on the number showing. This round the only action on the menu is the Jersey.#houserule[Unlocking actions over the first three rounds is a teaching convention. Every round is real play, and the restricted rounds are symmetric, so nothing needs undoing.]

  #say[A Jersey lets you add an X to this horse's card. From now on, whenever this horse is rolled, the horse you marked moves too, no matter who rolled.]

  #do[Everyone marks the rolled horse's Jersey and adds an X on its card. Pass the dice left.]

  The point to land: you just changed the race for everyone, permanently. Jerseys are how you nudge the horses you'll later bet on or buy.
]

#beat[Round 2 · Bet, Buy, Helmet][
  Same roll, same rule: act on the rolled number only. Three actions join the menu.

  - *Bet* \$1–3 of your cash on the horse. Add to an existing bet by rewriting the total
  - *Buy* the horse from the Market at its printed cost. You get its ability and its purse (\$35 / \$25 / \$15) if it places
  - *Helmet*: mark it. It's half a Jockey Set, and it's your licence to bet on this horse after it passes the No Bet line

  #do[Point at the No Bet line on the track.]

  Several players can take the same action. A Market horse exists once, so when two want it: #gap[two buyers, one horse].
]

#beat[Round 3 · Concessions][
  The last action: mark a circle matching the rolled number on your Concession Grid. Your Starting Card already gave you four.

  #say[Finish a row or a column and you pick one bonus off the list, once. Diagonals don't count.]

  The bonuses are where off-number play lives: move horses ±2 or ±3, a free \$3 bet, a free Helmet or Jersey on _any_ horse, \$7, or a free Market horse. A row and a column at once is two bonuses.
]

#beat[When someone first gets stuck · Wild Numbers][
  Teach this the first time a player has nothing they want on the rolled number, not before.

  Cross off a Wild Number at the start of your action and treat the Horse Die as any number. The horses already moved; this changes only what _you_ act on. If you're out of Wilds and can't act, spend your whole action erasing one.
]

#beat[The finish, when the first horse crosses][
  Only the dice carry a horse over the line, never a bonus or an ability. First three across take 1st, 2nd, 3rd and are done: no moves, no bets, no buys. When the third crosses, finish the round, then score.
]

#strategy[
  Bets pay by odds, so a long shot that places is worth far more per dollar than a favourite. Look at the odds column before your first bet.

  A Jersey helps the horse it marks, not you. A Jersey on a horse you neither own nor bet on can still pay off: it's half of a \$5 Jockey Set, and it sets up a bet later.

  Owning a horse pays only if it places, but its ability works all game. Buy early for the ability, late for the purse.

  Cash at the end is only face value. Money sitting idle when a horse you like is rolled is a missed bet.
]

#new-sheet[Back · rules first, then the genuine exceptions]

#section[These answer most questions]

#rule[One action each, every roll, on the rolled number.][Everyone acts, starting with the roller and going clockwise. Wild Numbers are the only way off-number.]

#rule[X's are forever and public.][Helmets, Jerseys, card X's and Concessions are never erased. Bets and Money are rewritten.]

#rule[Card X's belong to the card, not the player.][A Jersey X moves its horse whoever rolls.]

#rule[Finished horses are frozen.][Nothing moves them, bets on them, or buys them.]

#section[Genuine exceptions]

#exception[Rolled horse has already finished][it doesn't move, but its secondary movement still happens]

#exception[Several horses move at once][lowest number first]

#exception[Backward move reaches the start line][stop there; the rest is lost]

#exception[Bonus or ability would cross the finish][stop one space short]

#exception[Three horses have finished][every other horse stops one space before the line]

#exception[Betting past the No Bet line][only with that horse's Helmet. Free Bets obey this too]

#exception[Bet cap][\$3 per Bet action #gap[per action or per horse]]

#exception[Stuck, no Wild Numbers left][your action is erasing one used Wild]

#section[Scoring]

Purse for each owned horse that places (\$35 / \$25 / \$15). Each bet × that horse's odds for its finish position #gap[odds column]; a horse past the No Bet line that didn't place pays 1×, one that never reached it pays nothing. \$5 per Jockey Set (Helmet and Jersey on the same horse, owned or not). Leftover cash. "At Scoring" abilities. Tie: whoever owns the higher-placing horse #gap[tiebreak].

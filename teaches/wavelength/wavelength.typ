#import "../../template/teach.typ": *

#show: teach-sheet.with(
  title: [Wavelength],
  meta: [2+ players in two teams · first to 10 points · card in play: Round ←→ Pointy · positions on a 0–10 scale, 0 = fully Round],
  legend: true,
)

#beat[Goal and setup, while you set up][
  Two teams, first to 10 points wins. Second team starts at 1 point, which offsets going second. Pick a psychic each, device in the tray, card in the slot. Done.
]

#beat[Before you spin][
  #say[There's a hidden target on this line. Only I can see it. I'll name one thing, and you move the dial to where you think my target is.]

  #do[Spin, peek, close the screen, give the clue from the ladder below. Explain nothing else.]

  Let them argue. Let them set the dial. _Then_ open the screen, show the rings (2, 3, *4*, 3, 2), and let them discover what they scored. Scoring lands better as a reveal than a preamble.
]

#beat[The other team's point][
  Second team's turn. Stop them the moment the dial locks:

  #say[Before we reveal: other team, bet whether the true centre is left or right of that dial. Correct is one point.]

  This is the rule everyone forgets, so introduce it exactly when it goes live.
]

#beat[What you couldn't have said][
  Only now, after two clean rounds, cover the clue rules on the back. Framed as "here's what I was avoiding," they land as craft instead of legalese.
]

#section[Prepared clue ladder]

Spin, peek, find the nearest entry, say it out loud, say nothing else.

#table(
  columns: (auto, 1fr),
  align: (center, left),
  [*Target*], [*Clue*],
  [0.3], [A ball bearing],
  [1.4], [An orange],
  [2.5], [A hen's egg],
  [3.8], [A teardrop],
  [5.0], [A guitar pick],
  [6.8], [A sharpened pencil],
  [8.4], [An arrowhead],
  [9.7], [A sewing needle],
)

The idea to voice out loud: a clue names a _thing_, never a position. The skill is picking an object whose roundness matches the target's roundness.

- *1.4 "An orange"*: round, but a stem and a dimple. That imperfection is the whole gap between it and a ball bearing at 0.3
- *5.0 "A guitar pick"*: genuinely half-and-half. The dead-centre trap is going vague ("a shape") instead of specifically both
- *8.4 "An arrowhead"*: pointy on purpose, with width behind the tip. A needle overshoots, a pencil undershoots
- Deliberate near-miss to demo: for 6.8, "a knife" reads as 8-plus. People picture the tip, not the blade

#new-sheet[Back · rules first, then the genuine exceptions]

#section[These answer almost every clue question]

#rule[A clue names a thing, never a position.][Numbers, fractions, "a third in from the left," and directional comparisons like "rounder than a football" all fail the same test: they describe the dial, not the world.]

#rule[The ban is one-directional.][Only the psychic's clue is restricted. The guessing team can and should say "an egg feels like a 2.5" while they debate. That's the game working.]

#rule[The card words and their synonyms are out.][No "spherical," "circular," "sharp," "jagged." If it were legal you'd get barely-round, somewhat-round, extremely-round: a numeric scale in costume.]

#rule[One concept, then silence.][No second clue, no gestures, no wincing, no answering questions. Poker face until the screen opens.]

Legal but wastes the turn: bare adjectives with no anchor ("smooth"), private knowledge ("Dave's nose"), abstractions on a physical card ("jazz").

#section[Genuine exceptions]

#exception[Dial on a line between wedges][psychic's team takes the higher value, always]

#exception[Bullseye (4 points)][other team scores nothing that round, even with a correct left/right bet. This also dissolves "dial exactly on centre": there's no left or right to be right about]

#exception[Score 4 and still behind][immediate extra turn with a different psychic. Can chain; 9–1 is winnable. Announce this early, it stops blowouts feeling hopeless]

#exception[Dial misses entirely][other team still collects their left/right point]

#exception[Psychic hates the spectrum][either side of the card is fair game. One redraw allowed,#houserule[Redraw allowance is a house convention; the rulebook has no redraw.] but only before the spin]

#exception[Team deadlocks on the dial][next round's psychic breaks the tie#houserule[Tiebreaker choice is a house convention; pick any scheme at setup.]]

#exception[Both teams cross 10 in one round][play another round until someone is clearly ahead]

#exception[Timer][none in the box. Add 1 min psychic, 2 min team, only if one specific person stalls]

#branch[2–3P][Drop the left/right phase and play fully co-op for a group high score.]

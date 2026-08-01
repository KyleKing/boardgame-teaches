#import "../../template/teach.typ": *

#show: teach-sheet.with(
  title: [Decrypto],
  meta: [3–8 players, two teams · win at 2 Interception tokens · lose at 2 Miscommunication tokens · 8 rounds max],
  legend: true,
)

#beat[Frame the two failure modes][
  #do[Deal one screen per team]

  #branch[4+P][Two teams, four secret words behind each screen. Every round one of you sends your own team a three-digit code using clues, and the other team is listening in.]
  #branch[3P][Two of you are a team, one is the interceptor. The pair sends each other coded messages; you try to crack them, and you win with two intercepts inside five rounds.]

  #say[Intercept them twice and you win. Fail to understand your own encryptor twice and you lose.]
]

#beat[Words behind screens, numbered 1–4][
  #do[Slot keyword cards in, hand out note sheets. Say nothing else about them.]

  Two things to settle before starting: single words or short phrases, and whether proper nouns are allowed. Both work, they just have to match across teams.
]

#beat[The one line that must land][
  #say[Your team is not guessing the words. They already know the words. They're guessing the numbers.]
]

#beat[Play round one exposed][
  #do[Encryptor draws a code card. Start the sand timer on the encryptor, never the guessers.]

  Draw a code, three digits. Write one clue per digit, in that order, read all three aloud. Everyone guessing writes their numbers privately first, then agrees as a team.#houserule[Private-first guessing is a house convention: it stops the loudest player steering the team into a wrong answer.] Encryptor rotates every round.

  #do[Encryptor reads. Team guesses. Reveal.]

  #say[Nobody intercepted that one, because nothing was written down yet. That changes now.]
]

#beat[Round two: point at the note sheets][
  Every clue from last round is on paper, permanently, on both sheets. Introduce interception here, not earlier.

  #say[From now on the other team writes their guess and reveals it before your team answers. Right, that's an interception. Wrong costs them nothing: a free attempt every round for the rest of the game.]
]

#new-sheet[Teacher prep · the worked example]

#section[One keyword set, three rounds]

Keywords: *1 BEACH · 2 MOON · 3 SPIDER · 4 ENGINE*

*Round 1, code 4-1-2.* Nobody can intercept in round one, so obvious is _correct_: #quote[PISTON · SAND · CRATER]

*Round 3, code 1-2-3.* The opponents now have SAND under 1 and CRATER under 2. Repeating that family hands them the round: #quote[NORMANDY · WEREWOLF · WEB] Beach becomes a D-Day landing, moon a werewolf trigger. Spider is fresh, so WEB is still safe; first clues for a number can be direct.

*Round 5, code 2-3-1.* Moon shows CRATER + WEREWOLF, spider shows WEB. Two data points is enough to triangulate, so it gets genuinely hard: #quote[CHEESE · TARANTINO · CANCÚN]

The pattern to name out loud: the _second_ clue you give for a number is the dangerous one. One clue is ambiguous; two clues intersect. Round one you're helping your team. By round four you're mostly hiding from the other table.

#new-sheet[Back · rules first, then the genuine exceptions]

#section[These five answer almost every question]

#rule[Success earns nothing.][You're only ever avoiding penalties, never scoring.]

#rule[Intercepting is free.][A wrong intercept costs the interceptor nothing, every round, forever.]

#rule[Clues describe meaning, never spelling.][No letter counts, no positions, no rhymes.]

#rule[The keyword is never a clue,][in any form or part.]

#rule[Every round needs new clues.][No reuse, ever.]

#section[Genuine exceptions, all endgame only]

#exception[Both conditions at once][a team can hit two intercepts and two miscommunications in the same round. Tiebreak]

#exception[Both teams win at once][tiebreak]

#exception[Tiebreak][intercept +1, miscommunication −1, higher total wins]

#exception[Still tied][each team names the opponents' four words, most correct wins]

#exception[Round 8][the sheet has eight rows and that's the whole game. Nobody has won, go to the tiebreak]

#section[Player counts]

#branch[3P][2 v 1. The solo interceptor also takes a token when the pair miscommunicates, and needs 2 within 5 rounds or the pair wins.]
#branch[uneven teams][Fine. The larger team is arguably worse off: more voices to talk each other out of the right answer.]

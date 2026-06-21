# tic_tac_toe

OOP Logic:

What we need:

2 players,
positions on the board


Ideas:

Player class, which should have an instance method called, set position

the board should have a state checker to see what the current occupied positions are, if none is occupied it has its default value of its coordinate

for example:

[a1 a2 a3
b1 X O
c1 O c3]

{}

The board coordinates should be stored in the form of a hash

so we start in the main thing by initializing the players



1. start game
2. ask weather player wants to be X or O
4. the board displays its current coordinates (since no values have been place it will show all itss coordinates)

3. if player was x then they begin by placing themselves on one of the positions listed on the board above
4. we update the boards position on that coordinate through maybe a setter method to be the value either X or O
5. now we ensure that only the O player can play
6. We ensure they cant play on the same square as the other player
7. we update coordinates as followed
8. following win conditions: a1, a2, a3: b1, b2, b3: c1, c2, c3: a1, b2, c3: c1, b2, a3: c3, b2, a1










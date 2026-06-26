
Ask player weather they want to be X or O
Display Board
Ask player where they wanna place their marker
As long as the position isnt occupied then we place their marker
Check if they have won the game
or if the board is full
If not we switch players and start from asking the player where to place their marker

-------------

Ask player where they wanna place their marker:
    What we need:

    Player,
    Marker,
    Position,
    Board,

As long as the position isnt occupied, then we place their marker:
    What we need:

    board

Check if they have won the game
    What we need:

    Win pattern

CHeck if the board is full
    What we need:
    Board

If not we switch players and start from asking the player where to place their marker
    What we need:

    loop,
    switch Players
        What we need:
            Some sort of player tracking system that depends on the current player
            Some sort of storage for players

            
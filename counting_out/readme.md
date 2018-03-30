# Tinker Tailor


> Tinker, Tailor,
> Soldier, Sailor,
> Rich Man, Poor Man,
> Beggar Man, Thief!

This is an old English children's rhyme for counting out one of the players. Let's make this rhyme abstract!

It is a K-long sequence of syllables after all, and play this game repeatedly: N children stand in a circle, and they count from 1 to K starting from Player #1. This time Player #K gets excluded. They continue counting from the next player, #(K+1), and after each round one player leaves the circle. After N-1 rounds there will be one player standing, who wins the game.

The outcome of this game for N and K is the sequence of the excluded numbers. For example, in case of N = 5, K = 3 the solution is [3, 1, 5, 2, 4]. In a more verbose form:

starting from 1 --> [1 2 3 4 5] --> 3 is out -->
starting from 4 --> [1 2 - 4 5] --> 1 is out --> 
starting from 2 --> [- 2 - 4 5] --> 5 is out --> 
starting from 2 --> [- 2 - 4 -] --> 2 is out --> [4] wins

Write an algorithm that gives the outcome sequence for arbitrary N and K parameters.

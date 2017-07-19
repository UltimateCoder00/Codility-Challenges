# Frog River One Challenge

### The Challenge

Find the earliest time when a frog can jump to the other side of a river.

### Description

A small frog wants to get to the other side of a river. The frog is initially located on one bank of the river (position 0) and wants to get to the opposite bank (position X+1). Leaves fall from a tree onto the surface of the river.

You are given a zero-indexed array A consisting of N integers representing the falling leaves. A[K] represents the position where one leaf falls at time K, measured in seconds.

The goal is to find the earliest time when the frog can jump to the other side of the river. The frog can cross only when leaves appear at every position across the river from 1 to X (that is, we want to find the earliest moment when all the positions from 1 to X are covered by leaves). You may assume that the speed of the current in the river is negligibly small, i.e. the leaves do not change their positions once they fall in the river.

### Examples

Given integer X = 5 and array A = [1, 3, 1, 4, 2, 3, 5, 4], in second 6, a leaf falls into position 5. This is the earliest time when leaves appear in every position across the river.

Array  | X | Earliest time
:-------------: | :------------------------------: | :-------------:
[2, 2, 1] | 2 | 2
[1, 1, 3, 2, 3] | 3 | 3
[1, 3, 1, 4, 2, 3, 5, 4] | 5 | 6

### Objective
Write a function: def frog_river_one(x, a) that, given a non-empty zero-indexed array A consisting of N integers and integer X, returns the earliest time when the frog can jump to the other side of the river.

If the frog is never able to jump to the other side of the river, the function should return −1.

##### Example
Given integer X = 5 and array A = [1, 3, 1, 4, 2, 3, 5, 4], the function should return 6, as explained above.

Array  | X | Earliest time
:-------------: | :------------------------------: | :-------------:
[1, 3, 1, 4, 2, 3, 5, 4] | 5 | 6
[1, 3, 1, 2, 3] | 4 | -1

#### Assumption

- N and X are integers within the range [1..100,000];
- Each element of array A is an integer within the range [1..X].

#### Complexity

- Expected worst-case time complexity is O(N);
- Expected worst-case space complexity is O(X), beyond input storage (not counting the storage required for input arguments).

#### Notes
Elements of input arrays can be modified.

### Program

##### Installation
Clone the repo and in the terminal run:
```
- cd Codility-Challenges/Lesson\ 4\ Counting\ Elements/FrogRiverOne/
```

##### Running Tests
In the terminal type:
```
- rspec
```

##### Checking Test Speeds
Use the '--profile' command line option, for example run:

```
- rspec spec/frog_river_one.rb:65 --profile
```

This will return the following output:

```
Frog River One
  Performance Tests
    medium_random
      6 and 2 random permutations, X = ~5,000
    medium_range
      arithmetic sequences, X = 5,000
    large_random
      10 and 100 random permutation, X = ~10,000
    large_permutation
      permutation tests
    large_range
      arithmetic sequences, X = 30,000

Finished in 0.06938 seconds (files took 0.19987 seconds to load)
5 examples, 0 failures
```

##### Using The Program
In the terminal run:

```
- irb or pry:
```

###### Pry Example
```
[1] pry(main)> require './lib/frog_river_one'
=> true
[2] pry(main)> frog_river_one(3, [3, 1, 2])
=> 2
[3] pry(main)> frog_river_one(2, [1, 1, 2, 2, 2, 1])
=> 2
[4] pry(main)> frog_river_one(4, [1, 2, 3])
=> -1
[5] pry(main)> frog_river_one(4, [1, 2, 3, 3, 2, 1, 4])
=> 6
```

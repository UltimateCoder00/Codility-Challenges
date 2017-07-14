# Tape Equilibrium Challenge

### The Challenge

Minimize the value |(A[0] + ... + A[P-1]) - (A[P] + ... + A[N-1])|.

### Description

A non-empty zero-indexed array A consisting of N integers is given. Array A represents numbers on a tape.

Any integer P, such that 0 < P < N, splits this tape into two non-empty parts: A[0], A[1], ..., A[P − 1] and A[P], A[P + 1], ..., A[N − 1].

The difference between the two parts is the value of: |(A[0] + A[1] + ... + A[P − 1]) − (A[P] + A[P + 1] + ... + A[N − 1])|

In other words, it is the absolute difference between the sum of the first part and the sum of the second part.

### Examples

Consider array A such that:

A = [3, 1, 2, 4, 3]

We can split this tape in four places:

- P = 1, difference = |3 − 10| = 7
- P = 2, difference = |4 − 9| = 5
- P = 3, difference = |6 − 7| = 1
- P = 4, difference = |10 − 3| = 7

P  | Difference
:-------------: | :------------------------------:
1 | 7
2 | 5
3 | 1
4 | 7

### Objective
Write a function: def tape_equilibrium(a) that, given a non-empty zero-indexed array A of N integers, returns the minimal difference that can be achieved.

##### Example
Given array A such that: A = [3, 1, 2, 4, 3], the function should return 1, as explained above.

#### Assumption

- N is an integer within the range [2..100,000];
- Each element of array A is an integer within the range [−1,000..1,000].

#### Complexity

- Expected worst-case time complexity is O(N);
- Expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).

#### Notes
Elements of input arrays can be modified.

### Program

##### Installation
Clone the repo and in the terminal run:
```
- cd Codility-Challenges/Lesson\ 3\ Time\ Complexity/TapeEquilibrium/
```

##### Running Tests
In the terminal type:
```
- rspec
```

##### Checking Test Speeds
Use the '--profile' command line option, for example run:

```
- rspec spec/tape_equilibrium.rb:** --profile
```

This will return the following output:

```
```

##### Using The Program
In the terminal run:

```
- irb or pry:
```

###### Pry Example
```
```

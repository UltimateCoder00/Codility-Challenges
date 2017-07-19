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
- rspec spec/tape_equilibrium.rb:54 --profile
```

This will return the following output:

```
Tape Equilibrium
  Performance Tests
    medium_random1 - random medium, numbers from 0 to 100, length = ~10,000
      Array with length=~10000
    medium_random2 - random medium, numbers from -1,000 to 50, length = ~10,000
      Array with length=~10000
    large_ones - large sequence, numbers from -1 to 1, length = ~100,000
      Array with length=~100000
    large_random - random large, length = ~100,000
      Array with length=~100000
    large_sequence - large sequence, length = ~100,000
      Array with length=~100000
    large_extreme - large test with maximal and minimal values, length = ~100,000
      Array with length=~100000

Top 6 slowest examples (0.19169 seconds, 98.9% of total time):
  Tape Equilibrium Performance Tests large_ones - large sequence, numbers from -1 to 1, length = ~100,000 Array with length=~100000
    0.05492 seconds ./spec/tape_equilibrium_spec.rb:70
  Tape Equilibrium Performance Tests large_extreme - large test with maximal and minimal values, length = ~100,000 Array with length=~100000
    0.04688 seconds ./spec/tape_equilibrium_spec.rb:91
  Tape Equilibrium Performance Tests large_sequence - large sequence, length = ~100,000 Array with length=~100000
    0.04381 seconds ./spec/tape_equilibrium_spec.rb:84
  Tape Equilibrium Performance Tests large_random - random large, length = ~100,000 Array with length=~100000
    0.04257 seconds ./spec/tape_equilibrium_spec.rb:77
  Tape Equilibrium Performance Tests medium_random2 - random medium, numbers from -1,000 to 50, length = ~10,000 Array with length=~10000
    0.00178 seconds ./spec/tape_equilibrium_spec.rb:63
  Tape Equilibrium Performance Tests medium_random1 - random medium, numbers from 0 to 100, length = ~10,000 Array with length=~10000
    0.00172 seconds ./spec/tape_equilibrium_spec.rb:56

Finished in 0.19384 seconds (files took 0.18674 seconds to load)
6 examples, 0 failures
```

##### Using The Program
In the terminal run:

```
- irb or pry:
```

###### Pry Example
```
[1] pry(main)> require './lib/tape_equilibrium'
=> true
[2] pry(main)> tape_equilibrium([1,2])
=> 1
[3] pry(main)> tape_equilibrium([1,2,3,4,5])
=> 3
[4] pry(main)> tape_equilibrium([10, 5, 8])
=> 3
[5] pry(main)> tape_equilibrium([100, 200, 300, 400, 500])
=> 300
[6] pry(main)> tape_equilibrium([-1000, 1000])
=> 2000
```

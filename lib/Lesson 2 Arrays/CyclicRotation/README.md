# Cyclic Rotation Challenge

### The Challenge

Rotate an array to the right by a given number of steps.

### Description

A zero-indexed array A consisting of N integers is given. Rotation of the array means that each element is shifted right by one index, and the last element of the array is also moved to the first place.

### Examples

The rotation of array A = [3, 8, 9, 7, 6] is [6, 3, 8, 9, 7]. The goal is to rotate array A K times; that is, each element of A will be shifted to the right by K indexes.

Array  | Number of Rotations | New Array
:-------------: | :------------------------------:	| :-------------: |
[1, 2] | 1 | [2, 1]
[3, 8, 9, 7, 6] | 1 | [6, 3, 8, 9, 7]
[3, 2, 1, 6, 8, 5, 9] | 4 | [6, 8, 5, 9, 3, 2, 1]

### Objective
Write a function: def cyclic_rotation(a, k) that, given a zero-indexed array A consisting of N integers and an integer K, returns the array A rotated K times.

##### Example

Given array A = [3, 8, 9, 7, 6] and K = 3, the function should return [9, 7, 6, 3, 8].

Array  | Number of Rotations | New Array
:-------------: | :------------------------------:	| :-------------: |
[3, 8, 9, 7, 6] | 3 | [9, 7, 6, 3, 8]

#### Assumption

- N and K are integers within the range [0..100];
- each element of array A is an integer within the range [−1,000..1,000].

#### Complexity

In the solution, correctness will be the focus and not the performance.

### Program

##### Installation
Clone the repo and in the terminal run:
```
- cd Codility-Challenges/Lesson\ 2\ Arrays/CyclicRotation/
```

##### Running Tests
In the terminal type:
```
- rspec
```

##### Checking Test Speeds
Use the '--profile' command line option, for example run:

```
- Run rspec spec/cyclic_rotation_spec.rb:27 --profile
```

This will return the following output:

```
Cyclic Rotation
  Correctness Tests
    single - one element, 0 <= K <= 5
      ([1], 4) to [1]
      ([3], 2) to [3]
      ([5], 1) to [5]

Top 3 slowest examples (0.00131 seconds, 56.8% of total time):
  Cyclic Rotation Correctness Tests single - one element, 0 <= K <= 5 ([1], 4) to [1]
    0.00113 seconds ./spec/cyclic_rotation_spec.rb:28
  Cyclic Rotation Correctness Tests single - one element, 0 <= K <= 5 ([3], 2) to [3]
    0.00009 seconds ./spec/cyclic_rotation_spec.rb:34
  Cyclic Rotation Correctness Tests single - one element, 0 <= K <= 5 ([5], 1) to [5]
    0.00009 seconds ./spec/cyclic_rotation_spec.rb:40

Finished in 0.0023 seconds (files took 0.19166 seconds to load)
3 examples, 0 failures
```

##### Using The Program
In the terminal run:

```
- irb or pry:
```

###### Pry Example
```
[1] pry(main)> require './lib/cyclic_rotation'
=> true
[2] pry(main)> cyclic_rotation([1,2,3,4,5],2)
=> [4, 5, 1, 2, 3]
[3] pry(main)> cyclic_rotation([1,2],1)
=> [2, 1]
[4] pry(main)> cyclic_rotation([1,2],2)
=> [1, 2]
[5] pry(main)> cyclic_rotation([-5,3,-76,100,-1000],6)
=> [-1000, -5, 3, -76, 100]
```

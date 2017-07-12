# Challenge - Cyclic Rotation

### Summary

Rotate an array to the right by a given number of steps.

### Description

A zero-indexed array A consisting of N integers is given. Rotation of the array means that each element is shifted right by one index, and the last element of the array is also moved to the first place.

For example, the rotation of array A = [3, 8, 9, 7, 6] is [6, 3, 8, 9, 7]. The goal is to rotate array A K times; that is, each element of A will be shifted to the right by K indexes.

#### Examples

Array  | Number of Rotations | New Array
:-------------: | :------------------------------:	| :-------------: |
[1, 2] | 1 | [2, 1]
[3, 8, 9, 7, 6] | 1 | [6, 3, 8, 9, 7]
[3, 2, 1, 6, 8, 5, 9] | 4 | [6, 8, 5, 9, 3, 2, 1]
***

### Objective
Write a function: def solution(a, k) that, given a zero-indexed array A consisting of N integers and an integer K, returns the array A rotated K times.

For example, given array A = [3, 8, 9, 7, 6] and K = 3, the function should return [9, 7, 6, 3, 8].

#### Assumption

- N and K are integers within the range [0..100];
- each element of array A is an integer within the range [−1,000..1,000].

#### Complexity

In your solution, focus on correctness. The performance of your solution will not be the focus of the assessment.

### Program

#### Installation
To install the program do the following in the terminal:

```
- Clone this repo
- Run cd Lesson\ 2\ Arrays/CyclicRotation/
```

#### Run tests
To run the tests, in the terminal do:

```
- Run rspec
```

#### Test speeds
To check the speed of the tests, use the '--profile' command line option, for example:

#### Use program
To use the program, in the terminal:

```
- Run irb or pry:
```

#### Program Example
```
 ```

# Triangle Challenge

### The Challenge

Determine whether a triangle can be built from a given set of edges.

### Description

A zero-indexed array A consisting of N integers is given. A triplet (P, Q, R) is triangular if 0 ≤ P < Q < R < N and:

- A[P] + A[Q] > A[R],
- A[Q] + A[R] > A[P],
- A[R] + A[P] > A[Q].

### Examples

Consider array A such that:

A = [10, 2, 5, 1, 8, 20]

Triplet (0, 2, 4) is triangular.

Array  | Triangular Triplet
:-------------: | :------------------------------:
[10, 2, 5, 1, 8, 20] | (0, 2, 4)

### Objective
Write a function: def triangle(a) that, given a zero-indexed array A consisting of N integers, returns 1 if there exists a triangular triplet for this array and returns 0 otherwise.

##### Example
Given array A = [10, 2, 5, 1, 8, 20] the function should return 1, as explained above and given array B = [10, 50, 5, 1] the function should return 0.

Array  | Return Value
:-------------: | :------------------------------:
[10, 2, 5, 1, 8, 20] | 1
[10, 50, 5, 1] | 0

#### Assumption

- N is an integer within the range [0..100,000];
- Each element of array A is an integer within the range [−2,147,483,648..2,147,483,647].

#### Complexity

- Expected worst-case time complexity is O(N*log(N));
- Expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).

#### Notes
Elements of input arrays can be modified.

### Program

##### Installation
Clone the repo and in the terminal run:
```
- cd Codility-Challenges/Lesson\ 6\ Sorting/Triangle/
```

##### Running Tests
In the terminal type:
```
- rspec
```

##### Checking Test Speeds
Use the '--profile' command line option, for example run:

```
- rspec spec/triangle.rb:** --profile
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

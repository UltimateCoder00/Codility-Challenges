# Minimum Average of Two Slice Challenge

### The Challenge

Find the minimal average of any slice containing at least two elements.

### Description

A non-empty zero-indexed array A consisting of N integers is given. A pair of integers (P, Q), such that 0 ≤ P < Q < N, is called a slice of array A (notice that the slice contains at least two elements). The average of a slice (P, Q) is the sum of A[P] + A[P + 1] + ... + A[Q] divided by the length of the slice. To be precise, the average equals (A[P] + A[P + 1] + ... + A[Q]) / (Q − P + 1).

### Examples

Consider array A such that:

A = [4, 2, 2, 5, 1, 5, 8]

contains the following example slices:

- Slice (1, 2), whose average is (2 + 2) / 2 = 2;
- Slice (3, 4), whose average is (5 + 1) / 2 = 3;
- Slice (1, 4), whose average is (2 + 2 + 5 + 1) / 4 = 2.5.

The goal is to find the starting position of a slice whose average is minimal.

Array  | Slices | Averages
:-------------: | :------------------------------: | :-------------:
[4,2,2,5,1,5,8] | (1, 2), (3, 4), (1, 4) | 2, 3, 2.5

### Objective
Write a function: def min_avg_two_slice(a) that, given a non-empty zero-indexed array A consisting of N integers, returns the starting position of the slice with the minimal average. If there is more than one slice with a minimal average, you should return the smallest starting position of such a slice.

##### Example
Given array A such that: A = [4, 2, 2, 5, 1, 5, 8], the function should return 1, as explained above.

Array  | Return Value
:-------------: | :------------------------------:
[[4, 2, 2, 5, 1, 5, 8] | 1

#### Assumption

- N is an integer within the range [2..100,000];
- Each element of array A is an integer within the range [−10,000..10,000].

#### Complexity

- Expected worst-case time complexity is O(N);
- Expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).

#### Notes
Elements of input arrays can be modified.

### Program

##### Installation
Clone the repo and in the terminal run:
```
- cd Codility-Challenges/Lesson\ 5\ Prefix\ Sums/MinAvgTwoSlice/
```

##### Running Tests
In the terminal type:
```
- rspec
```

##### Checking Test Speeds
Use the '--profile' command line option, for example run:

```
- rspec spec/min_avg_two_slice.rb:** --profile
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

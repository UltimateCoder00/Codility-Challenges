# Max Product of Three Challenge

### The Challenge

Maximize A[P] * A[Q] * A[R] for any triplet (P, Q, R).

### Description

A non-empty zero-indexed array A consisting of N integers is given. The product of triplet (P, Q, R) equates to A[P] * A[Q] * A[R] (0 ≤ P < Q < R < N).

### Examples

Consider array A such that:

A = [-3, 1, 2, -2, 5, 6]

contains the following example triplets:

- (0, 1, 2), product is −3 * 1 * 2 = −6
- (1, 2, 4), product is 1 * 2 * 5 = 10
- (2, 4, 5), product is 2 * 5 * 6 = 60

Your goal is to find the maximal product of any triplet.


Array  | Triplets | Products
:-------------: | :------------------------------: | :-------------:
[-3, 1, 2, -2, 5, 6] | (0, 1, 2), (1, 2, 4), (2, 4, 5) | -6, 10, 60

### Objective
Write a function: def max_product_of_three(a) that, given a non-empty zero-indexed array A, returns the value of the maximal product of any triplet.

##### Example
Given array A = [-3, 1, 2, -2, 5, 6] the function should return 60, as the product of triplet (2, 4, 5) is maximal.

Array  | Return Value
:-------------: | :------------------------------:
[-3, 1, 2, -2, 5, 6] | 60

#### Assumption

- N is an integer within the range [3..100,000];
- Each element of array A is an integer within the range [−1,000..1,000].

#### Complexity

- Expected worst-case time complexity is O(N*log(N));
- Expected worst-case space complexity is O(1), beyond input storage (not counting the storage required for input arguments).

#### Notes
Elements of input arrays can be modified.

### Program

##### Installation
Clone the repo and in the terminal run:
```
- cd Codility-Challenges/Lesson\ 6\ Sorting/MaxProductOfThree/
```

##### Running Tests
In the terminal type:
```
- rspec
```

##### Checking Test Speeds
Use the '--profile' command line option, for example run:

```
- rspec spec/distinct.rb:** --profile
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

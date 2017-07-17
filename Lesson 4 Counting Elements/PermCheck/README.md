# Permutation Check Challenge

### The Challenge

Check whether array A is a permutation.

### Description

A permutation is a sequence containing each element from 1 to N once, and only once.

The goal is to check whether an array is a permutation.

### Examples

Array A:

A = [4, 1, 3, 2]

is a permutation, but array B:

B = [4, 1, 3]

is not a permutation, because value 2 is missing.

Array  | Permutation?
:-------------: | :------------------------------:
[1] | Yes
[2, 1] | Yes
[2, 5, 3, 1] | No value 4 is missing
[1, 2, 3, 4, 5, 6, 7, 9] | No value 8 is missing

### Objective
Write a function: def permutation_check(a) that, given a zero-indexed array A, returns 1 if array A is a permutation and 0 if it is not.

##### Example
- Given: A = [4, 1, 3, 2], the function should return 1.
- Given: B = [4, 1, 3], the function should return 0.

Array  | Function return
:-------------: | :------------------------------:
[4, 1, 3, 2] | 1
[4, 1, 3] | 0

#### Assumption

- N is an integer within the range [1..100,000];
- Each element of array A is an integer within the range [1..1,000,000,000].

#### Complexity

- Expected worst-case time complexity is O(N);
- Expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).

#### Notes
Elements of input arrays can be modified.

### Program

##### Installation
Clone the repo and in the terminal run:
```
- cd Codility-Challenges/Lesson\ 4\ Counting\ Elements/PermCheck/
```

##### Running Tests
In the terminal type:
```
- rspec
```

##### Checking Test Speeds
Use the '--profile' command line option, for example run:

```
- rspec spec/permutation_check.rb:** --profile
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

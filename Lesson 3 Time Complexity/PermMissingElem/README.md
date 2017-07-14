# Missing Element In Permutation Challenge

### The Challenge

Find the missing element in a given permutation.

### Description

A zero-indexed array A consisting of N different integers is given. The array contains integers in the range [1..(N + 1)], which means that exactly one element is missing.

Your goal is to find that missing element.

### Examples

Array  | Return Value
:-------------: | :------------------------------:
[1, 2] | 3
[1, 2, 3, 5] | 4
[8, 2, 1, 4, 7, 9, 3, 5] | 6

### Objective
Write a function: def perm_missing_elem(a) that, given a zero-indexed array A, returns the value of the missing element.

##### Example
Given array A such that: A = [2, 3, 1, 5], the function should return 4, as it is the missing element.

Array  | Return Value
:-------------: | :------------------------------:
[2, 3, 1, 5] | 4

#### Assumption

- N is an integer within the range [0..100,000];
- The elements of A are all distinct;
- Each element of array A is an integer within the range [1..(N + 1)].

#### Complexity

- Expected worst-case time complexity is O(N);
- Expected worst-case space complexity is O(1), beyond input storage (not counting the storage required for input arguments).

#### Notes
Elements of input arrays can be modified.

### Program

##### Installation
Clone the repo and in the terminal run:
```
- cd Codility-Challenges/Lesson\ 3\ Time\ Complexity/PermMissingElem/
```

##### Running Tests
In the terminal type:
```
- rspec
```

##### Checking Test Speeds
Use the '--profile' command line option, for example run:

```
- rspec spec/perm_missing_elem.rb:** --profile
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

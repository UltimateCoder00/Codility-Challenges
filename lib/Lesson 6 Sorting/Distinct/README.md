# Distinct Challenge

### The Challenge

Compute number of distinct values in an array.

### Description

### Examples

Consider array A such that:

A = [2, 1, 1, 2, 3, 1],

the function should return 3.

Array  | Distinct Values
:-------------: | :------------------------------:
[2, 1, 1, 2, 3, 1] | 3

### Objective
Write a function def distinct(a) that, given a zero-indexed array A consisting of N integers, returns the number of distinct values in array A.

##### Example
Given array A = [2, 1, 1, 2, 3, 1] consisting of six elements, the function should return 3, because there are 3 distinct values appearing in array A, namely 1, 2 and 3.

Array  | Distinct Values
:-------------: | :------------------------------:
[2, 1, 1, 2, 3, 1] | 3

#### Assumption

- N is an integer within the range [0..100,000];
- Each element of array A is an integer within the range [−1,000,000..1,000,000].

#### Complexity

- Expected worst-case time complexity is O(N*log(N));
- Expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).

#### Notes
Elements of input arrays can be modified.

### Program

##### Installation
Clone the repo and in the terminal run:
```
- cd Codility-Challenges/Lesson\ 6\ Sorting/Distinct/
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

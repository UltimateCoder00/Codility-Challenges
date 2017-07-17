# Missing Integer Challenge

### The Challenge

Find the minimal positive integer not occurring in a given sequence.

### Description

A non-empty zero-indexed array A of N integers is given. The array contains integers in the range [1..N], with missing elements.

Your goal is to find the minimal positive integer missing element.

### Examples

Consider array A such that:

A = [3, 1, 2, 5, 6]

The element 4 is missing from the array.

Array  | Missing Integer
:-------------: | :------------------------------:
[2] | 1
[1, 1, 3] | 2
[3, 4, 2, 7] | 1
[3, 1, 2, 5, 6] | 4

### Objective
Write a function: def missing_integer(a) that, given a non-empty zero-indexed array A of N integers, returns the minimal positive integer (greater than 0) that does not occur in A.

##### Example
Given: A = [1, 3, 6, 4, 1, 2], the function should return 5.

Array  | Missing Integer
:-------------: | :------------------------------:
[1, 3, 6, 4, 1, 2] | 5

#### Assumption

- N is an integer within the range [1..100,000];
- Each element of array A is an integer within the range [−2,147,483,648..2,147,483,647].

#### Complexity

- Expected worst-case time complexity is O(N);
- Expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).

#### Notes
Elements of input arrays can be modified.

### Program

##### Installation
Clone the repo and in the terminal run:
```
- cd Codility-Challenges/Lesson\ 4\ Counting\ Elements/MissingInteger/
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

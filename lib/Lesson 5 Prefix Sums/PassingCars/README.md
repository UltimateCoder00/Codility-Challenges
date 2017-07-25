# Passing Cars Challenge

### The Challenge

Count the number of passing cars on the road.

### Description

A non-empty zero-indexed array A consisting of N integers is given. The consecutive elements of array A represent consecutive cars on a road.

Array A contains only 0s and/or 1s:

- 0 represents a car traveling east,
- 1 represents a car traveling west.

The goal is to count passing cars. We say that a pair of cars (P, Q), where 0 ≤ P < Q < N, is passing when P is traveling to the east and Q is traveling to the west.

### Examples

Consider array A such that:

A = [0, 1, 0, 1, 1]

We have five pairs of passing cars: (0, 1), (0, 3), (0, 4), (2, 3), (2, 4).

Array  | Pairs
:-------------: | :------------------------------:
[0, 1] | (0, 1)
[0, 1, 0, 1] | (0, 1), (0, 3), (2, 3)
[0, 1, 0, 1, 1] | (0, 1), (0, 3), (0, 4), (2, 3), (2, 4)

### Objective
Write a function: def passing_cars(a) that, given a non-empty zero-indexed array A of N integers, returns the number of pairs of passing cars.

The function should return −1 if the number of pairs of passing cars exceeds 1,000,000,000.

##### Example
Given array A such that: A = [0, 1, 0, 1, 1], the function should return 5, as explained above.

Array  | Return Value
:-------------: | :------------------------------:
[0, 1, 0, 1, 1] | 5

#### Assumption

- N is an integer within the range [1..100,000];
- Each element of array A is an integer that can have one of the following values: 0, 1.

#### Complexity

- Expected worst-case time complexity is O(N);
- Expected worst-case space complexity is O(1), beyond input storage (not counting the storage required for input arguments).

#### Notes
Elements of input arrays can be modified.

### Program

##### Installation
Clone the repo and in the terminal run:
```
- cd Codility-Challenges/Lesson\ 5\ Prefix\ Sums/PassingCars/
```

##### Running Tests
In the terminal type:
```
- rspec
```

##### Checking Test Speeds
Use the '--profile' command line option, for example run:

```
- rspec spec/passing_cars.rb:** --profile
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

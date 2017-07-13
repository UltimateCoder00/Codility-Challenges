# Odd Occurrences In Array Challenge

### The Challenge

Find value that occurs in odd number of elements.

### Description

A non-empty zero-indexed array A consisting of N integers is given. The array contains an odd number of elements, and each element of the array can be paired with another element that has the same value, except for one element that is left unpaired.

#### Examples

Given an array A such that:

A = [9, 3, 9, 3, 9, 7, 9]

- The elements at indexes 0 and 2 have value 9,
- The elements at indexes 1 and 3 have value 3,
- The elements at indexes 4 and 6 have value 9,
- The element at index 5 has value 7 and is unpaired.

Array  | Odd Element
:-------------: | :------------------------------:
[4, 6, 4] | 6
[1, 1, 1, 2, 1] | 2
[9, 3, 9, 3, 9, 7, 9] | 7


### Objective
Write a function: def odd_occurrences_in_array that, given an array A consisting of N integers fulfilling the above conditions, returns the value of the unpaired element.

##### Example

Given array A = [9, 3, 9, 3, 9, 7, 9], the function should return 7.

Array  | Odd Element
:-------------: | :------------------------------:
[9, 3, 9, 3, 9, 7, 9] | 7

#### Assumption

- N is an odd integer within the range [1..1,000,000];
- Each element of array A is an integer within the range [1..1,000,000,000];
- All but one of the values in A occur an even number of times.

#### Complexity

- Expected worst-case time complexity is O(N);
- Expected worst-case space complexity is O(1), beyond input storage (not counting the storage required for input arguments).

#### Notes
Elements of input arrays can be modified.

### Program

#### Installation
Clone the repo and in the terminal run:
```
- cd Codility-Challenges/Lesson\ 2\ Arrays/OddOccurrencesInArray/
```

##### Running Tests
In the terminal type:
```
- rspec
```

#### Test speeds
Use the '--profile' command line option, for example run:

```
- Run rspec spec/odd_occurrences_in_array_spec.rb:** --profile
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

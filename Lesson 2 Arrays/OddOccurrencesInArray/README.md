# Odd Occurrences In Array Challenge

### The Challenge

Find value that occurs in odd number of elements.

### Description

A non-empty zero-indexed array A consisting of N integers is given. The array contains an odd number of elements, and each element of the array can be paired with another element that has the same value, except for one element that is left unpaired.

### Examples

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

##### Installation
Clone the repo and in the terminal run:
```
- cd Codility-Challenges/Lesson\ 2\ Arrays/OddOccurrencesInArray/
```

##### Running Tests
In the terminal type:
```
- rspec
```

##### Checking Test Speeds
Use the '--profile' command line option, for example run:

```
- rspec spec/odd_occurrences_in_array_spec.rb:54 --profile
```

This will return the following output:

```
Odd Occurrences In Array
  Performance Tests
    medium1 - medium random test n=2,001
      Random Array with n=2,001
    medium2 - medium random test n=100,003
      Random Array with n=100,003
    big1 - big random test n=999,999, multiple repetitions
      Random Array with n=999,999
    big2 - big random test n=999,999
      Random Array with n=999,999

Top 4 slowest examples (0.89376 seconds, 99.8% of total time):
  Odd Occurrences In Array Performance Tests big2 - big random test n=999,999 Random Array with n=999,999
    0.44764 seconds ./spec/odd_occurrences_in_array_spec.rb:86
  Odd Occurrences In Array Performance Tests big1 - big random test n=999,999, multiple repetitions Random Array with n=999,999
    0.40713 seconds ./spec/odd_occurrences_in_array_spec.rb:76
  Odd Occurrences In Array Performance Tests medium2 - medium random test n=100,003 Random Array with n=100,003
    0.03658 seconds ./spec/odd_occurrences_in_array_spec.rb:66
  Odd Occurrences In Array Performance Tests medium1 - medium random test n=2,001 Random Array with n=2,001
    0.00242 seconds ./spec/odd_occurrences_in_array_spec.rb:56

Finished in 0.89568 seconds (files took 0.19187 seconds to load)
4 examples, 0 failures
```

##### Using The Program
In the terminal run:

```
- irb or pry:
```

###### Pry Example
```
[1] pry(main)> require './lib/odd_occurrences_in_array'
=> true
[2] pry(main)> odd_occurrences_in_array([1,2,1])
=> 2
[3] pry(main)> odd_occurrences_in_array([1,2,3,4,5,4,3,2,1])
=> 5
[4] pry(main)> odd_occurrences_in_array([23,56,43,12,56,23,43])
=> 12
[5] pry(main)> odd_occurrences_in_array([1,1,1,1,1,1,1,1,6,1,1])
=> 6
```

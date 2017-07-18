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
- rspec spec/permutation_check.rb:69 --profile
```

This will return the following output:

```
Permutation Check
  Performance Tests
    medium_permutation
      permutation + few elements occur twice, N = ~10,000
    antiSum2
      total sum is correct, but it is not a permutation, N = ~100,000
    large_permutation
      permutation + one element occurs three times, N = ~100,000
    large_range
      sequence 1, 2, ..., N, N = ~100,000
    extreme_values
      all the same values, N = ~100,000

Top 5 slowest examples (0.11745 seconds, 98.3% of total time):
  Permutation Check Performance Tests large_permutation permutation + one element occurs three times, N = ~100,000
    0.03763 seconds ./spec/permutation_check_spec.rb:115
  Permutation Check Performance Tests antiSum2 total sum is correct, but it is not a permutation, N = ~100,000
    0.03688 seconds ./spec/permutation_check_spec.rb:93
  Permutation Check Performance Tests large_range sequence 1, 2, ..., N, N = ~100,000
    0.01936 seconds ./spec/permutation_check_spec.rb:135
  Permutation Check Performance Tests extreme_values all the same values, N = ~100,000
    0.01801 seconds ./spec/permutation_check_spec.rb:145
  Permutation Check Performance Tests medium_permutation permutation + few elements occur twice, N = ~10,000
    0.00556 seconds ./spec/permutation_check_spec.rb:71

Finished in 0.11944 seconds (files took 0.19117 seconds to load)
5 examples, 0 failures
```

##### Using The Program
In the terminal run:

```
- irb or pry:
```

###### Pry Example
```
[1] pry(main)> require './lib/permutation_check.rb'
=> true
[2] pry(main)> permutation_check([1])
=> 1
[3] pry(main)> permutation_check([2])
=> 0
[4] pry(main)> permutation_check([1,2,3,4,5])
=> 1
[5] pry(main)> permutation_check([1,2,3,4,5,6,7,8,10])
=> 0
```

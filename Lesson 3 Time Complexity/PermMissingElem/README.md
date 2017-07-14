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
- rspec spec/perm_missing_elem.rb:62 --profile
```

This will return the following output:

```
Missing Element In Permutation
  Performance Tests
    medium1 - medium test, length = ~10,000
      Array with ~10,000
    medium2 - medium test, length = ~10,000
      Array with ~10,000
    large_range - range sequence, length = ~100,000
      Array with ~100,000 1
      Array with ~100,000 2
      Array with ~100,000 3
    large1 - large test, length = ~100,000
      Array with ~100,000
    large2 - large test, length = ~100,000
      Array with ~100,000

Top 7 slowest examples (0.11648 seconds, 97.8% of total time):
  Missing Element In Permutation Performance Tests large1 - large test, length = ~100,000 Array with ~100,000
    0.02493 seconds ./spec/perm_missing_elem_spec.rb:105
  Missing Element In Permutation Performance Tests large_range - range sequence, length = ~100,000 Array with ~100,000 2
    0.02269 seconds ./spec/perm_missing_elem_spec.rb:89
  Missing Element In Permutation Performance Tests large_range - range sequence, length = ~100,000 Array with ~100,000 3
    0.02161 seconds ./spec/perm_missing_elem_spec.rb:96
  Missing Element In Permutation Performance Tests large_range - range sequence, length = ~100,000 Array with ~100,000 1
    0.0211 seconds ./spec/perm_missing_elem_spec.rb:82
  Missing Element In Permutation Performance Tests large2 - large test, length = ~100,000 Array with ~100,000
    0.02005 seconds ./spec/perm_missing_elem_spec.rb:114
  Missing Element In Permutation Performance Tests medium1 - medium test, length = ~10,000 Array with ~10,000
    0.00433 seconds ./spec/perm_missing_elem_spec.rb:64
  Missing Element In Permutation Performance Tests medium2 - medium test, length = ~10,000 Array with ~10,000
    0.00178 seconds ./spec/perm_missing_elem_spec.rb:73

Finished in 0.11906 seconds (files took 0.19984 seconds to load)
7 examples, 0 failures
```

##### Using The Program
In the terminal run:

```
- irb or pry:
```

###### Pry Example
```
[1] pry(main)> require './lib/perm_missing_elem'
=> true
[2] pry(main)> perm_missing_elem([1])
=> 2
[3] pry(main)> perm_missing_elem([2])
=> 1
[4] pry(main)> perm_missing_elem([1,2])
=> 3
[5] pry(main)> perm_missing_elem([1,2, 3, 4, 6])
=> 5
[6] pry(main)> perm_missing_elem([10, 4, 2, 6, 8, 3, 5, 1, 7])
=> 9
```

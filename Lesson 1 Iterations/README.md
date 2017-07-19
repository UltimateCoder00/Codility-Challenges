[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE.txt)

# Binary Gap Challenge

### The Challenge

Find longest sequence of zeros in binary representation of an integer.

### Description

A binary gap within a positive integer N is any maximal sequence of consecutive zeros that is surrounded by ones at both ends in the binary representation of N.

### Examples

- The number 9 has binary representation 1001 and contains a binary gap of length 2.
- The number 15 has binary representation 1111 and has no binary gaps.
- The number 20 has binary representation 10100 and contains one binary gap of length 1.
- The number 529 has binary representation 1000010001 and contains two binary gaps: one of length 4 and one of length 3.

Number  | Binary Representation | Binary Gap
:-------------: | :------------------------------:	| :-------------: |
9 | 1001 | 2
15 | 1111 | 0
20 | 10100 | 1
529 | 1000010001 | 3 & 4

### Objective
Write a function: def binary_gap(number) that, given a positive integer N, returns the length of its longest binary gap. The function should return 0 if N doesn't contain a binary gap.

##### Example

Given N = 1041 the function should return 5, because N has binary representation 10000010001 and so its longest binary gap is of length 5.

Number  | Binary Representation | Binary Gap
:-------------: | :------------------------------:	| :-------------: |
1041 | 10000010001 | 5

#### Assumption

N is an integer within the range [1..2,147,483,647].

#### Complexity

- Expected worst-case time complexity is O(log(N));
- Expected worst-case space complexity is O(1).

### Program

##### Installation
Clone the repo and in the terminal run:
```
- cd Codility-Challenges/Lesson\ 1\ Iterations/
```

##### Running Tests
In the terminal type:
```
- rspec
```

##### Checking Test Speeds
Use the '--profile' command line option, for example run:

```
- rspec spec/binary_gap_spec.rb:5 --profile
```

This will return the following output:

```
BinaryGap
  Example Tests
    example 1: 1041=10000010001
    example 2: 15=1111

Top 2 slowest examples (0.00131 seconds, 57.0% of total time):
  BinaryGap Example Tests example 1: 1041=10000010001
    0.00119 seconds ./spec/binary_gap_spec.rb:6
  BinaryGap Example Tests example 2: 15=1111
    0.00012 seconds ./spec/binary_gap_spec.rb:11

Finished in 0.0023 seconds (files took 0.21073 seconds to load)
2 examples, 0 failures
```

##### Using The Program
In the terminal run:

```
- irb or pry:
```

###### Pry Example
```
[1] pry(main)> require './lib/binary_gap'
=> true
[2] pry(main)> binary_gap(100)
=> 2
[3] pry(main)> binary_gap(1)
=> 0
[4] pry(main)> binary_gap(5)
=> 1
[5] pry(main)> binary_gap(234632)
=> 3
[6] pry(main)> binary_gap(16)
=> 0
```

### Acknowledgements
I will like to thank [Codility](https://codility.com/programmers/) for providing this challenge.

### License

This project is licensed under the MIT License - see the [LICENSE.txt](LICENSE.txt) file for details

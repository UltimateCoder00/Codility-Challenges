# Challenge - Binary Gap

### Summary

Find longest sequence of zeros in binary representation of an integer.

### Description

A binary gap within a positive integer N is any maximal sequence of consecutive zeros that is surrounded by ones at both ends in the binary representation of N.

#### Examples

Number  | Binary Representation | Binary Gap
------------- | ------------------------------	| :-------------: |
9 | 1001 | 2
15 | 1111 | 0
20 | 10100 | 1
529 | 1000010001 | 4
***

### Objective
Write a function: def solution(n)
that, given a positive integer N, returns the length of its longest binary gap. The function should return 0 if N doesn't contain a binary gap.

For example, given N = 1041 the function should return 5, because N has binary representation 10000010001 and so its longest binary gap is of length 5.

#### Assumption

N is an integer within the range [1..2,147,483,647].

#### Complexity

- Expected worst-case time complexity is O(log(N));
- Expected worst-case space complexity is O(1).

### Program

#### Installation
To install the program do the following:

```
- Clone this repo
- Run cd Lesson\ 1\ Iterations/
```

#### Run tests
To run the tests do:

```
- Run rspec
```

#### Use program
To use the program:

```
- Run irb or pry:
```

#### Program Example
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

# Count Divisibles

### The Challenge

Compute number of integers divisible by k in range [a..b].

### Description

### Examples

### Objective
Write a function: def count_divisibles(a, b, k) that, given three integers A, B and K, returns the number of integers within the range [A..B] that are divisible by K, i.e.:

{ i : A ≤ i ≤ B, i mod K = 0 }

##### Example

For A = 6, B = 11 and K = 2, your function should return 3, because there are three numbers divisible by 2 within the range [6..11], namely 6, 8 and 10.

A  | B | K | Divisibles
:-------------: | :------------------------------:	| :-------------: | :-------------: |
6 | 11 | 2 | 3

#### Assumption

- A and B are integers within the range [0..2,000,000,000];
- K is an integer within the range [1..2,000,000,000];
- A ≤ B.

#### Complexity

- Expected worst-case time complexity is O(1);
- Expected worst-case space complexity is O(1).

### Program

##### Installation
Clone the repo and in the terminal run:
```
- cd Codility-Challenges/lib/Lesson\ 5\ Prefix\ Sums/CountDiv/
```

##### Running Tests
In the terminal type:
```
- rspec
```

##### Checking Test Speeds
Use the '--profile' command line option, for example run:

```
- Run rspec spec/count_divisibles.rb: --profile
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

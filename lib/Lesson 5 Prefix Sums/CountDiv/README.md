# Count Divisibles Challenge

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
- Run rspec spec/count_divisibles.rb44: --profile
```

This will return the following output:

```
Count Divisibles
  Performance Tests
    big_values
      A = 100, B=123M+, K=2
    big_values2
      A = 101, B = 123M+, K = 10K
    big_values3
      A = 0, B = MAXINT, K in {1,MAXINT}
    big_values4
      A, B, K in {1,MAXINT}

Top 4 slowest examples (0.00122 seconds, 47.7% of total time):
  Count Divisibles Performance Tests big_values A = 100, B=123M+, K=2
    0.001 seconds ./spec/count_divisibles_spec.rb:46
  Count Divisibles Performance Tests big_values2 A = 101, B = 123M+, K = 10K
    0.00008 seconds ./spec/count_divisibles_spec.rb:52
  Count Divisibles Performance Tests big_values4 A, B, K in {1,MAXINT}
    0.00007 seconds ./spec/count_divisibles_spec.rb:65
  Count Divisibles Performance Tests big_values3 A = 0, B = MAXINT, K in {1,MAXINT}
    0.00007 seconds ./spec/count_divisibles_spec.rb:58

Finished in 0.00256 seconds (files took 0.19533 seconds to load)
4 examples, 0 failures
```

##### Using The Program
In the terminal run:

```
- irb or pry:
```

###### Pry Example
```
=> true
[2] pry(main)> count_divisibles(1,10,2)
=> 5
[3] pry(main)> count_divisibles(1,10,3)
=> 3
[4] pry(main)> count_divisibles(1,10,4)
=> 2
[5] pry(main)> count_divisibles(5,100,4)
=> 24
[6] pry(main)> count_divisibles(5,100,5)
=> 20
[7] pry(main)> count_divisibles(5,100000,5)
=> 20000
```

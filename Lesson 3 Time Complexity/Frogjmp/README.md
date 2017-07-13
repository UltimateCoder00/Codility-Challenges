# Frog Jump Challenge

### The Challenge

Count minimal number of jumps from position X to Y.

### Description

A small frog wants to get to the other side of the road. The frog is currently located at position X and wants to get to a position greater than or equal to Y. The small frog always jumps a fixed distance, D.

Count the minimal number of jumps that the small frog must perform to reach its target.

### Examples

- Given X = 10, Y = 100, D = 10, the function should return 9.
- Given X = 13, Y = 245, D = 15, the function should return 16.
- Given X = 57, Y = 999, D = 20, the function should return 48.
- Given X = 199, Y = 10000, D = 50, the function should return 197.

X | Y | D | Result
:-------------: | :-------------: | :-------------: | :-------------:
10 | 100 | 10 | 9
13 | 245 | 15 | 16
57 | 999 | 20 | 48
199 | 10000 | 50 | 197


### Objective
Write a function: def frog_jump(x, y, d) that, given three integers X, Y and D, returns the minimal number of jumps from position X to a position equal to or greater than Y.

##### Example
Given:
- X = 10  
- Y = 85   
- D = 30

The function should return 3, because the frog will be positioned as follows:

- After the first jump, at position 10 + 30 = 40
- After the second jump, at position 10 + 30 + 30 = 70
- After the third jump, at position 10 + 30 + 30 + 30 = 100

X | Y | D | Result
:-------------: | :-------------: | :-------------: | :-------------:
10 | 85 | 30 | 3

#### Assumption

- X, Y and D are integers within the range [1..1,000,000,000];
- X ≤ Y.

#### Complexity

- Expected worst-case time complexity is O(1);
- Expected worst-case space complexity is O(1).

### Program

##### Installation
Clone the repo and in the terminal run:
```
- cd Lesson\ 3\ Time\ Complexity/Frogjmp/
```

##### Running Tests
In the terminal type:
```
- rspec
```

##### Checking Test Speeds
Use the '--profile' command line option, for example run:

```
- rspec spec/frog_jump_spec.rb:10 --profile
```

This will return the following output:

```
Frog Jump
  Correctness Tests
    simple1
      (10, 100, 10)) to 9
    simple2
      (5, 75, 10)) to 7
    extreme_position - no jump needed
      (50, 50, 5)) to 0
    small_extreme_jump - one big jump
      (50, 500, 1000)) to 1

Top 4 slowest examples (0.00183 seconds, 49.0% of total time):
  Frog Jump Correctness Tests simple1 (10, 100, 10)) to 9
    0.00161 seconds ./spec/frog_jump_spec.rb:12
  Frog Jump Correctness Tests simple2 (5, 75, 10)) to 7
    0.00009 seconds ./spec/frog_jump_spec.rb:18
  Frog Jump Correctness Tests extreme_position - no jump needed (50, 50, 5)) to 0
    0.00007 seconds ./spec/frog_jump_spec.rb:24
  Frog Jump Correctness Tests small_extreme_jump - one big jump (50, 500, 1000)) to 1
    0.00006 seconds ./spec/frog_jump_spec.rb:30

Finished in 0.00373 seconds (files took 0.19479 seconds to load)
4 examples, 0 failures
```

##### Using The Program
In the terminal run:

```
- irb or pry:
```

###### Pry Example
```
[1] pry(main)> require './lib/frog_jump'
=> true
[2] pry(main)> frog_jump(10, 100, 5)
=> 18
[3] pry(main)> frog_jump(10, 1000, 5)
=> 198
[4] pry(main)> frog_jump(11, 1000, 13)
=> 77
[5] pry(main)> frog_jump(99, 1000000, 103)
=> 9708
[6] pry(main)> frog_jump(2, 1000000000, 50)
=> 20000000
```

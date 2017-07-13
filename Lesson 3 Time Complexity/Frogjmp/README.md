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
- rspec spec/odd_occurrences_in_array_spec.rb:** --profile
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

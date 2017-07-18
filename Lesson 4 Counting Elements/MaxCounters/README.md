# Max Counters Challenge

### The Challenge

Calculate the values of counters after applying all alternating operations: increase counter by 1; set value of all counters to current maximum.

### Description

You are given N counters, initially set to 0, and you have two possible operations on them:

- Increase(X) − counter X is increased by 1,
- Max counter − all counters are set to the maximum value of any counter.

A non-empty zero-indexed array A of M integers is given. This array represents consecutive operations:

- If A[K] = X, such that 1 ≤ X ≤ N, then operation K is increase(X),
- If A[K] = N + 1 then operation K is max counter.

The goal is to calculate the value of every counter after all operations.

### Examples

Given integer N = 5 and array A = [3, 4, 4, 6, 1, 4, 4], the values of the counters after each consecutive operation will be:

    (0, 0, 1, 0, 0)
    (0, 0, 1, 1, 0)
    (0, 0, 1, 2, 0)
    (2, 2, 2, 2, 2)
    (3, 2, 2, 2, 2)
    (3, 2, 2, 3, 2)
    (3, 2, 2, 4, 2)

### Objective
Write a function: def max_counter(n, a) that, given an integer N and a non-empty zero-indexed array A consisting of M integers, returns a sequence of integers representing the values of the counters.

The sequence should be returned as:

- A structure Results (in C), or
- A vector of integers (in C++), or
- A record Results (in Pascal), or
- An array of integers (in any other programming language).

##### Example
Given array A = [3, 4, 4, 6, 1, 4, 4] and integer N = 5, the function should return [3, 2, 2, 4, 2], as explained above.

Array  | N | Return Array
:-------------: | :------------------------------: | :-------------:
[3, 4, 4, 6, 1, 4, 4] | 5 | [3, 2, 2, 4, 2]

#### Assumption

- N and M are integers within the range [1..100,000];
- Each element of array A is an integer within the range [1..N + 1].


#### Complexity

- Expected worst-case time complexity is O(N+M);
- Expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).

#### Notes
Elements of input arrays can be modified.

### Program

##### Installation
Clone the repo and in the terminal run:
```
- cd Codility-Challenges/Lesson\ 4\ Counting\ Elements/MaxCounters/
```

##### Running Tests
In the terminal type:
```
- rspec
```

##### Checking Test Speeds
Use the '--profile' command line option, for example run:

```
- rspec spec/max_counter.rb:** --profile
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

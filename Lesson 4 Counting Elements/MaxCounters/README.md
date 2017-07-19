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
- rspec spec/max_counter.rb:37 --profile
```

This will return the following output:

```
Max Counter
  Performance Tests
    medium_random1
      medium random test, 50 max_counter operations
    medium_random2
      medium random test, 500 max_counter operations
    large_random1
      large random test, 2120 max_counter operations
    large_random2
      large random test, 10000 max_counter operations
    extreme_large
      all max_counter operations 1
      all max_counter operations 2
      no max_counters

Top 7 slowest examples (0.78092 seconds, 99.8% of total time):
  Max Counter Performance Tests large_random1 large random test, 2120 max_counter operations
    0.3881 seconds ./spec/max_counter_spec.rb:59
  Max Counter Performance Tests large_random2 large random test, 10000 max_counter operations
    0.15018 seconds ./spec/max_counter_spec.rb:69
  Max Counter Performance Tests extreme_large all max_counter operations 2
    0.13513 seconds ./spec/max_counter_spec.rb:85
  Max Counter Performance Tests extreme_large no max_counters
    0.08792 seconds ./spec/max_counter_spec.rb:91
  Max Counter Performance Tests extreme_large all max_counter operations 1
    0.01637 seconds ./spec/max_counter_spec.rb:79
  Max Counter Performance Tests medium_random1 medium random test, 50 max_counter operations
    0.00175 seconds ./spec/max_counter_spec.rb:39
  Max Counter Performance Tests medium_random2 medium random test, 500 max_counter operations
    0.00146 seconds ./spec/max_counter_spec.rb:49

Finished in 0.78281 seconds (files took 0.1967 seconds to load)
7 examples, 0 failures
```

##### Using The Program
In the terminal run:

```
- irb or pry:
```

###### Pry Example
```
[1] pry(main)> require './lib/max_counter'
=> true
[2] pry(main)> max_counter(3, [1,2,3])
=> [1, 1, 1]
[3] pry(main)> max_counter(3, [1,2,2,2,3])
=> [1, 3, 1]
[4] pry(main)> max_counter(3, [1,2,2,2,3,4])
=> [3, 3, 3]
[5] pry(main)> max_counter(5, [1,2,2,2,3,4])
=> [1, 3, 1, 1, 0]
[6] pry(main)> max_counter(5, [1,2,2,2,3,4,6])
=> [3, 3, 3, 3, 3]
```

# Genomic Range Query Challenge

### The Challenge

Find the minimal nucleotide from a range of sequence DNA.

### Description

A DNA sequence can be represented as a string consisting of the letters A, C, G and T, which correspond to the types of successive nucleotides in the sequence. Each nucleotide has an impact factor, which is an integer. Nucleotides of types A, C, G and T have impact factors of 1, 2, 3 and 4, respectively. You are going to answer several queries of the form: What is the minimal impact factor of nucleotides contained in a particular part of the given DNA sequence?

The DNA sequence is given as a non-empty string S = S[0]S[1]...S[N-1] consisting of N characters. There are M queries, which are given in non-empty arrays P and Q, each consisting of M integers. The K-th query (0 ≤ K < M) requires you to find the minimal impact factor of nucleotides contained in the DNA sequence between positions P[K] and Q[K] (inclusive).

### Examples

Consider string S = CAGCCTA and arrays P = [2, 5, 0], Q = [4, 5, 6]. The answers to these M = 3 queries are as follows:

- The part of the DNA between positions 2 and 4 contains nucleotides G and C (twice), whose impact factors are 3 and 2 respectively, so the answer is 2.
- The part between positions 5 and 5 contains a single nucleotide T, whose impact factor is 4, so the answer is 4.
- The part between positions 0 and 6 (the whole string) contains all nucleotides, in particular nucleotide A whose impact factor is 1, so the answer is 1.

S | P | Q | Minimal Impact Factor
:-------------: | :------------------------------:	| :-------------: | :-------------: |
CAGCCTA | [2] | [4] | 2
CAGCCTA | [5] | [5] | 4
CAGCCTA | [0] | [6] | 1

### Objective
Write a function: def solution(s, p, q) that, given a non-empty zero-indexed string S consisting of N characters and two non-empty zero-indexed arrays P and Q consisting of M integers, returns an array consisting of M integers specifying the consecutive answers to all queries.

The sequence should be returned as:

- A Results structure (in C), or
- A vector of integers (in C++), or
- A Results record (in Pascal), or
- An array of integers (in any other programming language).

##### Example

Given the string S = CAGCCTA and arrays P = [2, 5, 0], Q = [4, 5, 6], the function should return the values [2, 4, 1], as explained above.

S | P | Q | Return Value
:-------------: | :------------------------------:	| :-------------: | :-------------: |
CAGCCTA | [2, 5, 0] | [4, 5, 6] | [2, 4, 1]

#### Assumption

- N is an integer within the range [1..100,000];
- M is an integer within the range [1..50,000];
- Each element of arrays P, Q is an integer within the range [0..N − 1];
- P[K] ≤ Q[K], where 0 ≤ K < M;
- String S consists only of upper-case English letters A, C, G, T.

#### Complexity

- Expected worst-case time complexity is O(N+M);
- Expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).

#### Notes

Elements of input arrays can be modified.

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
- Run rspec spec/genomic_range_query.rb**: --profile
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

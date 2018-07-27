# <a href="https://angelddaz.github.io/bridgetomasters/"> Home </a>

If you are looking at this with an html at the end of your URL, I highly recommend checking out the [.md version](https://github.com/angelddaz/bridgetomasters/blob/master/introtoprob.md) instead. Most of the markdown formatting goes out the window in the html site.

Before I start the chapters, I have noticed a lot to do with distributions and densities. I think this [picture](https://github.com/angelddaz/bridgetomasters/blob/master/Py_scripts/misc/dist_framework.PNG) of distribution frameworks will be very helpful:

<img src="https://github.com/angelddaz/bridgetomasters/blob/master/Py_scripts/misc/dist_framework.PNG" alt = "you should go to the .md version of this site if you can't see this picture: https://github.com/angelddaz/bridgetomasters/blob/master/introtoprob.md">


# My Understanding/Condensation of each [Intro to Probability](https://www.dartmouth.edu/~chance/teaching_aids/books_articles/probability_book/amsbook.mac.pdf) Chapter

<details>
  <summary> <b> Chapter 1 - Discrete Probability Distributions </b> </summary>
<br>
Discrete basically means a finite number of possibilities within the context of probability.
The more we toss a coin, the more the sample mean approaches "True mean"

1.2 Discrete Probability Distributions
```
the sample space of the experiment is the set of all possible outcomes
```
i.e. Omega = sample space of a 6 sided die = {1, 2, 3, 4, 5, 6}
if E = 1
P(1) = 1/6 = Probability of rolling a 1 on a 6 sided die

basic set operations picture from the book. Very reminiscent of relational algebra in databases. I guess if we can consider sample spaces as databases of their own in a way.


<img src="https://github.com/angelddaz/bridgetomasters/blob/master/Py_scripts/misc/basic_set_operations.PNG" alt = "you should go to the .md version of this site if you can't see this picture: https://github.com/angelddaz/bridgetomasters/blob/master/introtoprob.md">


P(A∪B) = P(A) + P(B) − P(A∩B)
basically the left circle of a venn diagram plus the right circle minus the intersection equals the total area that both circles cover.

Tree Diagrams

definition:
```
The uniform distribution on a sample space Omega containing n elements is the function m defined by
m(ω) = 1 / n, for every ω ∈ Omega.
```

history of probability yay :)
Treating each dice as an independent event in a two dice experiment was a revolution apparently. who knew
by 
```Gerolamo Cardano(1501–1576) in his book Liber de Ludo Aleae```

if an event is favorable three out of four cases, the correct odds is 3 : 1
3/4ths probability is P(.75) and if you get the same success twice in a row, you would do (3/4) * (3/4) instead of squaring both odds, which is what Cardano did mistakenly.

There are two main ways to calculate probabilities according to the end of this chapter:
```
Pascal’s method was to develop an algorithm and use it to
calculate the fair division. This method is easy to implement on a computer and easy
to generalize. Fermat’s method, on the other hand, was to change the problem into
an equivalent problem for which he could use counting or combinatorial methods
```
1. Pascal method of using a generalizable algorithm
2. Fermat method of changing the problem so that we can use counting or combinatorial methods.

I'm not totally sure what the above 10 lines mean but will go into more detail as the book continues.

final thing in the chapter:
```
both the algorithmic approach and the combinatorial approach share equal billing
```
I had to look up equal billing because I am not familiar with this phrase, and it means basically equal importance. You could probably gather from the clues the words give you but one I haven't come across very often so I looked it up just to be sure and to make the book more accessible to first gen folks.

As a side note, I appreciate that this book has less chapters and more details. Think Stats was great as an intro to multiple topics but since I am familiar with a lot of it, programing and statistics, the parts which I am not familiar with I felt like it didn't go into enough detail. I'm having a good time with Open Intro Stats and this book so far, Intro to Prob. Some books just click and others don't through nobody's fault.

</details>

<details>
  <summary> <b> Chapter 2 - Continuous Probability Densities</b> </summary>
<br>
  
```summing an uncountable number of real numbers is a tricky business
```
Thinking face.emoji
simulations for how the proportion of success under a curve given an area, (x,y) = ([0,1],[0,1])
of course you can do this with calculus with an integral but simulation proportions is really interesting. 

```
different choices of coordinates will lead
to different assignments of probabilities
```
interesting. Most of the time, it's easy to think in x,y cartesian coordinates but other ones exist. especially with circular-y type stuff.

2.2 Continuous Density Functions
This is basically graphing the simulations in 2.1 it seems like. In smoothed out bar charts, or grabbing some sort of functions from these distributions of the simulations.

</details>

<details>
  <summary> <b> Chapter 3 - Combinatorics </b> </summary>
<br>

3.1 Permutations
```
The number of permutations of n increases so rapidly that even to list all permutations of 20 objects is impractical
```
3.2 Combination
n choose j = (factorial of n) / ((factorial of j)((factorial of (n - j)))

```
Bernoulli trials process is a sequence of n chance experiments such that

1. Each experiment has two possible outcomes, which we may call success and
failure.

2. The probability p of success on each experiment is the same for each experiment,
and this probability is not affected by any knowledge of previous
outcomes. The probability q of failure is given by q = 1 − p.
```
3.3 Card Shuffling
lots of proofs and theorems


</details>


<details>
  <summary> <b> Chapter 4 - Conditional Probability </b> </summary>
<br>
  
if events E and F are independent then:
```
P(E|F) = P(E) and P(F|E) = P(F)

or

at least one of the events has probability 0.
```
Another way to check for independence:
```
P(E ∩ F) = P(E)P(F) 
```

4.2  Continuous Conditional Probability

looks like conditional probability but with integrals


4.3 Paradoxes

Decision trees and using them based on how we receive or interpret information.

</details>

<details>
  <summary> <b> Chapter 5 - Important Distributions and Densities </b> </summary>
<br>

Negative binomial distribution is like binomial distribution except that the probabilities are calculated with 
P(X = x) = (x − 1 choose k − 1 ) * p^k * q^(x − k) 

Poisson Distribution

```
The Poisson distribution arises in many situations. It is safe to say that it is one of
the three most important discrete probability distributions (the other two being the
uniform and the binomial distributions).
```

so this following sentence is the hint that we can deal with a Poisson distribution:

```
Suppose that we have a situation in which a certain kind of occurrence happens
at random over a period of time
```

Hypergeometric Distribution

k is option 1
N - k is option 2
n is how many we choose 

this distribution depends on three parameters N, k, and n

P(X = x) = h(N, k, n, x) = ((k choose x) * ( N − k choose n − x ) ) / (N choose n)

```
This distribution can be generalized to the case where there are more than two types of object
```

Benford Distribution -- never heard of this distribution before
```
distribution comes from the study of leading digits in dataset
```


super interesting. reminds me of the Ben Affleck movie 'The Accountant':
```
Mark Nigrini has advocated the use of the Benford distribution as a means
of testing suspicious financial records such as bookkeeping entries, checks, and tax
returns. His idea is that if someone were to “make up” numbers in these cases,
the person would probably produce numbers that are fairly uniformly distributed,
while if one were to use the actual numbers, the leading digits would roughly follow
the Benford distribution
```

5.2 Important Densities

Apparently there's a difference between distributions and densities
that makes sense. distribution may refer to area taken up and density is the relative amount within that area.

Chi Squared Density:
```
method for testing independence of traits
 ```

The sum of each i where (Observedi - Expectedi) ^ 2 / (Expectedi)

We can plot each of these values for a distrubtion.

The chi-squared test statistic can then be used against a critical value to test a null hypothesis.

Cauchy Density -- never heard of this one
didn't get this section almost at all

  </details>

<details>
  <summary> <b> Chapter 6 - Expected Value and Variance </b> </summary>
<br>

```
We often refer to the expected value as the mean, and denote E(X) by µ (mu) for short. 
```

E(X + Y) = E(X) + E(Y)

and if c is any constant

E(c * X) = c * E(X)

Bernoulli Trials -- again

if Ssubn is number of successes in n trials
then E(Ssubn) = n * p

where p is probability of success

6.2 Variance of Discrete Random Variables

Variance of X = V(X) = E((X − µ)^2) = Sum for each observed x ((x − µ)^2 * m(x) )

where m(x) is probability of the individual x occuring

Standard Deviation is the square root of Variance

6.3 Continuous Random Variables

Continuous just means calculus and integrals to me now
E(x) = integral of x * f(x) dx



  </details>

<details>
  <summary> <b> Chapter 7 - Sums of Independent Random Variables </b> </summary>
<br>

7.2 Sums of Continuous Random Variables

I didn't really understand this chapter much at all


</details>

<details>
  <summary> <b> Chapter 8 - Law of Large Numbers </b> </summary>
<br>
  
What is Chebyshev's inequality? I don't know.

I think Bernoulli uses the law of large numbers as reasoning for fate, that everything in the long run must return to a state of averages or something like that. Philosophical.


Didn't really understand much in that chapter. I wonder how this law differs from Central Limit Theorem (CLT)
```
The Central limit Theorem states that when sample size tends to infinity, the sample mean will be normally distributed. 
The Law of Large Number states that when sample size tends to infinity, the sample mean equals to population mean.
```

</details>

<details>
  <summary> <b> Chapter 9 - Central Limit Theorem </b> </summary>
<br>

```
The Central limit Theorem states that when sample size tends to infinity, the sample mean will be normally distributed. 
```

</details>

<details>
  <summary> <b> Chapter 10 - Generation Functions</b> </summary>
<br>
  
10.1 Generating Functions for Discrete Distributions
pdf page 375


</details>

<details>
  <summary> <b> Chapter 11 - Markov Chains  </b> </summary>
<br>

</details>

<details>
  <summary> <b> Chapter 12 - Random Walks </b> </summary>
<br>
  

</details>


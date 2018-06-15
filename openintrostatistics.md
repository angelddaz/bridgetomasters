# <a href="https://angelddaz.github.io/bridgetomasters/"> Home </a>

# My Understanding/Condensation of each [Open Intro Statistics](https://www.openintro.org/stat/textbook.php?stat_book=os) Chapter

I'm not sure yet how these summaries will go. Probably a mix of blogging and coding about each chapter. I imagine that for the first few books, each intro chapter will be mostly blogging about it and less coding about it. I was debating skipping this book because I have taken statistics, econometrics, etc. in college and have a few years of experience with data analysis. But I ended up deciding I will go through this book.

Now. On to the book!

## Chapter 1 - Introduction to data
A good thing to note. 
```
statistics has three primary components: 
How best can we collect data? 
How should it be analyzed? 
And what can we infer from the analysis?
```
[good video on basics of data analysis](https://www.youtube.com/watch?v=Mjif8PTgzUs&list=PLkIselvEzpM6pZ76FD3NoCvvgkj_p-dE8)

```
Guided Practice 1.1
```
Around 20% of the patients in the treatment group had a stroke in the first year.\

I didn't know this:
```
possible values [of a categorical variable such as States or Countries] are called the variable’s levels.
```
or this:
```
Stratified sampling is a divide-and-conquer sampling strategy. 
The population is divided into groups called strata.
```
[Gah! I always forget which one is right skewed and left skewed. Slide 24](https://docs.google.com/presentation/d/1RxhMS64htGTy-nH8eo8xqYvqT7-yxViVIS_gncWaTwk/edit#slide=id.g1726b84cdb_0_164)
Right skewed has small area under the curve on the right. Left skewed has small area under the curve on the left.

This book is very thorough with lots of videos and slides as supplements within the pdf.
sample mean is xbar

1.6.3 Histograms have always been a little tricky for me. I know that they don't need a Y axis
*binned counts plotted as bars* is a great definition for histograms. Histograms are deceptively simple to me. 

```Histograms provide a view of the data density```
aka distributions
sample variance (s^2) is  ((the sum of ((each observation minus the sample mean) squared) ) divided by sample size minus 1 )

to break down **((the sum of ((each observation minus the sample mean) squared) ) divided by sample size minus 1 )**:

You start with each observation minus the sample mean.
You square each one of these.
You add them all up.
Finally you divide that sum by sample size minus 1.

```The IQR is the length of the box in a box plot. It is computed as IQR = Qsub3 - Qsub1```

1.6.7
```A transformation is a rescaling of the data using a function```
for example, applying a log to the x axis. Works great at seeing past a highly skewed dataset, such as MLB salaries.

[considering categorical data video](https://www.youtube.com/watch?v=7NhNeADL8fA&list=PLkIselvEzpM6pZ76FD3NoCvvgkj_p-dE8)
I feel like categorical data is where a lot of bad data quality happens. Maybe bad data quality discriminates not and affects all kinds of data equally as bad.

Skipping problems for this chapter.

## Chapter 2 - Probability (special topic)
Good old dice problems
```P(1 or 2) = P(1) + P(2) = 1/6 + 1/6 = 1/3```
Out of a deck of cards:
```P(diamond or face card) = P(diamond) + P(face card) - P(diamond and face card)```

Complement of an event, P(A), is 1.0 - P(A).

Independence:
```Two processes are independent if knowing the outcome of one provides no useful information about the outcome of the other```
*P(A and B) = P(A) x P(B)*

which is different from

*P(A or B) = P(A) + P(B)*

Conditional Probability
```The conditional probability of the outcome of interest A given condition B is computed as the following:
P(A|B) = P(A and B) / P(B)
```
P(A | B) = Probability that B occurs, given that A has occured.

General Multiplication Rule for events that might not be independent
P(A and B) = P(A|B) x P(B)
it is simply a rearrangment of the Conditional Probability equation above.

2.2.6
Tree diagrams are super interesting to me. Within the "universe" of a complete sample, they give the illusion of omniscience or total control. Almost like how Sherlock can see n steps into the future in the BBC series.

2.2.7
Bayes' Theorem :grimacing emoji: 

Huh this is really interesting.
``` TIP: Only use Bayes’ Theorem when tree diagrams are dicult ```
So, I read through this section and am still a bit confused. I get this whole chapter up until this theorem. Maybe a mental or emotional block.

I would love to review 2.2.7 with a statistician friend.

Figure 2.23
In a continuous distribution, the mean could be calculated by the integral of x times f(x) , where f(x) is a function for the density curve.

General Variance formula = sum each j until k for (xsubj minus mean)^2 times P(X = xsubj )
It's kind of getting the combined variance for each variable from 0 to k, where each iteration is j.

Skipping problems for this chapter. I'll be skipping more problems for this book than the more advanced ones which have material I've never been exposed to.

## Chapter 3 - Distributions of random variables
```The normal distribution with mean 0 and standard deviation 1 is called the standard normal distribution.```
Without the standard there, it can have whatever mean and whatever standard deviation (stdev) as long as it's mirrored on both sides of the mean and it follows the unimodal, bell-shaped curve.

this is a good concise definition:
```
The Z-score of an observation is defined as the number of standard deviations it falls above or below the mean
```
It's computed by subtracting an observation by the mean and then dividing the result by the stdev. I've used this formula many times in quantitative type courses like econ or stats.

Using the z score to find a probability from a table is something I am pretty familiar with. Memories of Statistical Techniques for Business Decision Making classes are coming back. I'm not doing any of the problems because I have already done problems, I mostly am doing this for refresher and also to approach the same topics without the stress of grades or spitting out the correct answer.
It always helps to draw out which area of the normal curve the question is asking for. For example; P(value is between A and B). So you find the relevant probability of A and of B and then subtract those two values B - A for an absolute value of distance (or area below the normal curve) between the two. I'm surprised with how familiar I am with this section.

3.3 Geometric Distributions
```When an individual trial only has two possible outcomes, it is called a Bernoulli random variable```
mean equals probability of outcome success which is ``` 1 / p ```
stdev equals sqrt(probability of success times probability of failure ) = ```sqrt(p(1-p))```

If the probability of a success in one trial is p and the probability of a failure is 1 - p, then the probability of finding the first success in the nth trial is given by (1 - p)^(n - 1) * p
Basically you raise the original by the amount of trials minus one and then times the result by the original probability of outcome success.

I am more familiar with a Bernoulli distribution than I ever thought I was. It's so nice to read this book without pressure.

3.4 Binomial Distributions
This is where it starts to get really math-y for me. Binomial distributions are repeated trials with binary outcomes (success-failure or heads-tails). so this formula is for P(K successes)
(n choose k) times probability of success (p) raised to the power of success(k) times failure outcome (1 - p) raised to the power of failures (n - k)
so there's basically three parts to the binomial distribution formula.
1. n choose k
2. probability of success raised to the power of number of successes
3. probability of failure raise to the power of number of failures

to repeat in a different way
1. n! / ( k! (n - k)! )
2. p^k
3. (1 - p ) ^ (n - k)

and you times all three together and you get your probability of K successes. Typically in textbooks, n, k and p will be provided. The rest is just plug and play if you can remember where to plug.

2 more small formulas:
mean = n * p
stdev = sqrt ( n * p * ( 1 - p ) )

Normal approximation is where we basically smooth out the bars and lose some nuance in exchange for being able to use a continuous function and z scores and stuff like that. Not a big deal if you're not super into theory work I think.

3.5.1 Negative Binomial distribution
Negative Binomial distribution describes the probability of observing the kth success on the nth trial.

similar but different formula. The only thing that changes from the following three chunks from Binomial distribution formula is the first step. Apart from the formula, n also changes because now it's not total amount of trials but rather can be changed. 
1. (n - 1) choose (k - 1)
2. probability of success raised to the power of number of successes
3. probability of failure raise to the power of number of failures

These three steps are all timesd togethe for P(the kth success on the nth trial).

put another way:
1. (n - 1)! / ( (k - 1)! (n - k)! ) // this one is the same mathematically expect the two minus ones inside parantheses
2. p^k
3. (1 - p ) ^ (n - k)

3.5.2 Poisson Distribution
```The Poisson distribution is often useful for estimating the number of events in a large population over a unit of time```
more useful words
```The Poisson distribution helps us describe the number of such events that will occur in a day for a fixed population if the individuals within the population are independent.```

The rate of something happening is denoted by the greek symbol [lambda](https://en.wikipedia.org/wiki/Lambda)
So the formula
P(observe k events) = ((lambda ^ k) * (e  ^ -lambda)) / k!

where e is the natural logarithm number, you know the [2.7something](https://en.wikipedia.org/wiki/E_(mathematical_constant))


ML (GLM) WARNING:
```The idea of modeling rates for a Poisson distribution against a second variable such as dayOfTheWeek forms the foundation of some more advanced methods that fall in the realm of generalized linear models```

Great chapter. I am really happy with how much I was able to follow along. It's like looking at the same material but now I've taken a nap.

## Chapter 4 - Foundations for inference

## Chapter 5 - Inference for numerical data

## Chapter 8 - Inference for categorical data

## Chapter 6 - Introduction to Linear Regression

## Chapter 7 - Multiple and Logistic Regression

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
pg. 127


## Chapter 4 - Foundations for inference

## Chapter 5 - Inference for numerical data

## Chapter 8 - Inference for categorical data

## Chapter 6 - Introduction to Linear Regression

## Chapter 7 - Multiple and Logistic Regression

# <a href="https://angelddaz.github.io/bridgetomasters/"> Home </a>

If you are looking at this with an html at the end of your URL, I highly recommend checking out the [.md version](https://github.com/angelddaz/bridgetomasters/blob/master/openintrostatistics.md) instead. Most of the markdown formatting goes out the window in the html site.

# My Understanding/Condensation of each [Open Intro Statistics](https://www.openintro.org/stat/textbook.php?stat_book=os) Chapter

I'm not sure yet how these summaries will go. Probably a mix of blogging and coding about each chapter. I imagine that for the first few books, each intro chapter will be mostly blogging about it and less coding about it. I was debating skipping this book because I have taken statistics, econometrics, etc. in college and have a few years of experience with data analysis. But I ended up deciding I will go through this book.

Now. On to the book!
<details>
  <summary> <b> Chapter 1 - Introduction to data </b> </summary>
<br>

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

</details>

<details>
  <summary> <b> Chapter 2 - Probability (special topic) </b> </summary>
<br>

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
</details>

<details>
  <summary> <b> Chapter 3 - Distributions of random variables </b> </summary>
<br>
  
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

</details>


<details>
  <summary> <b> Chapter 4 - Foundations for inference </b> </summary>
<br>

4.1 Variability in Estimates
Statistical  inference  is  concerned  primarily  with  understanding  the  quality  of  parameter estimates
Principles of inference don't change across different statistical methods.
Point estimates are like sample means.

I think maybe I won't be taking many notes in this chapter. It's more of approaches to analysis rather than math heavy stuff.

Taking many random sample means and then making a histogram of it makes a sampling distribution. It's like variance of point estimates.

Standard error of an estimate is the standard deviation associateed with estimate. I've seen (SE) associated with multiple regression variables. This section talks about standard error of a point estimate, I wonder how this differs from standard error of a variable slope in regression.

Computing standard error for the sample mean is equal to standard deviation divided by the square root of observations.
We want to conduct a simple random sample consisting of less than 10% of the population.


4.2 Confidence Intervals
Confidence Interval is a plausible range of values for the popultation parameter. CI is like a net. Point Estimate is like a spear. 

A 95% confidence interval can be computed by point estimate +- 2 times SE.

What does 95% confident mean? Good question.
25 samples of size n = 100 for a estimate point of x bar.  95% of them will ocntain the actual mean.

You can adjust the standard deviation used in calculating the SE if you want a smaller or larger confidence interval.
Confidence interval only tells you how plausible it is that a parameter is in hte interval, not a probability.
Margin of error is z * SE.

4.3 Hypothesis Testing
Hsub0 is the null hypothesis - often represents a skeptical perspective or a claim to be tested
HsubA is the alternative hypothesis - represents an alternative claim, often represented by a range of possible parameter values

Checking for skew is tricky this book says.
Type 1 error is rejecting the null hypothesis when it is actually true. AKA False Positive 
Type 2 error is failing to reject the null hypothesis when the alternative is true. AKA False Negative

4.3.4 Formal Testing using p-value

p-value
``` the probability of observing data at least as favorable to the alternative hypothesis as our current data set, if the null hypothesis is true.```
How do I reword this. The probability that future real data will be at least as favorable to the alternative hypothesis, often represented by a range of possible parameter values, as our current data set.
Null hypothesis will always be listed as an equality. 


So let's say we get a p value of 0.007 after calculating the z statistic with sample mean, null value, and SEsubx. That means that if the null hypothesis is true, the probability of oversaing a sample mean as least as large as the sample mean is 0.007. That means we would not often see such a large sample mean.

The smaller the p-value, the stronger the data favor HsubA over Hsub0. 

Two sided hypothesis testing is basically using a HsubA in which a value is actually in between two different p values.

</details>

<details>
  <summary> <b> Chapter 5 - Inference for numerical data </b> </summary>
<br>
  
How do we check for normality in small data sets?
We must not only examine the data but also where it comes from. Am I confident that outliers are rare?

The t-distribution has thicker tails than normal distribution so it allows for more area past 2 stdevs outisde the mean in both directions. t-distribution has a single parameter- degrees of freedom (df).

Degrees of freedom describe the shape of the t-dist. The larger the df, the more closely the t dist approximates hte normal model.

When to use t-dist
When observations are independent and nearly normal

df = n - 1

5.2 Paired Data
Paired data when comparing one to one observations. Differences in prices between two stores for exact same items for example.
We have null hypothesis that there is no difference between the two.
Alternative hypothesis that there is a difference.

compute SE with stdev / sqrt(n)
compute T statistic or T score with xbar - 0 (null value) divided by the standard error.
compute p-values with the T score and degrees of freedom. If the p values are less than 0.05 on both sides, we reject the null hypothesis that there is no difference between the two. One store probably is, on average, cheaper than the other.

5.3 difference of two means
consider the difference in two population means. t-distribution can be used for inference of the difference of two mean if the samples are independent and meet the conditions for using the t-dist which is independent observations and distribution of sample is somewhat normal.

Calculate the SE of the differnece of two means SEsub(xbar1 - xbar2) = sqrt ( variance1/n1 + variance2/n2 )
df = MIN(n1 -1 OR n2 - 1)
So if we get a SE of 1.95 then we would use the t stat from a .95 confidence level and the degrees of freedom.
Also use our original value of the difference between the two means.
original difference +- t stat times 1.95 (SE).

With a confidence interval of (3.32, 12.32) we are 95% confident that an original estimated difference of 7.83 is accurate.
I did difference of means t tests like this in pizza delivery statistics [here](https://github.com/angelddaz/pizza_delivery/blob/master/scripts/angel_sam_t_test.py). I wrote this python script a while ago.



5.3.6 Pooled standard deviation estimate
Use pooled standard deviation of two groups so that the SE and stdev is better estimated when the two means have very similar standard deviatoins.

Pooled group variance = variance1 * (n1 - 1) + variance2 * (n2 - 1) / (n1 + n2 - 2)
This formula is similar 


5.5 Comparing many means with ANOVA
H0 the mean is equal across all groups
HA at least one mean is different

we want independent observations, nearly normal data within groups, variability across groups is about equal.
I'm think that ANOVA is perfect for group by analysis. For example, if each group is a day of the week and we want to see statistical difference between average consumer behavior across a long period of time grouped by day of the week.


Good reading about [Prosecutor's Fallacy](http://andrewgelman.com/2007/05/18/the_prosecutors/)
A lesson in snowballing confirmation bias.

5.5.2 Analysis of variance (ANOVA) and the F test
Variability called the mean square between groups (MSG) has df = k -1 where k is number of groups. MSG can be thought of as a scaled variance formula for means. MSG on it's own is pretty useless without a benchmark to compare it to. Mean Square Erorr (MSE) with df = n - k is that benchmark. When the null hypothesis is true, differences between sample means are due to chance, MSG and MSE should be about equal. test stat for ANOVA is F = MSG / MSE.

MSG measures between-group variability
MSE measures variability within each of the groups

Bonferroni correction is a fancy word for even more stringent confidence levels with multiple groups.
alpha* = alpha / K
where K = k(k -1)/2 where k is # of groups

```This is effectively the strategy of ANOVA:stand back and consider all the groups simultaneously.```

  </details>

<details>
  <summary> <b> Chapter 6 - Inference for categorical data </b> </summary>
<br>

Sample proportion (p hat) (p with a little ^ on top)
Conditions for sampling dist of p hat to be nearly normal
1. sample observations are independent
2. we expect to see at least 10  succeses and 10 failures. np >= 10 and n(1 - p) >= 10. This is called the success-failure condition

SEsub(p hat) = sqrt( p(1 - p) / (n) )
Most of the time we don't know p, or true proportion, so we substitute in p hat.

Remember: Confidence Interval (CI) = point estimate +- z * SE
With a p hat of 0.82 +- 1.96 for 95% CI and times 0.012 SE gives us (0.796, 0.844) CI

important:
```
In a one-proportion hypothesis test, the success-failure condition is checked using the null proportion, which is p0= 0.5 

in this context: nsubp0 = n(1 − p0)
 ```

We can use the following general formula for proportions as well:
Z = (point estimate - null value) / (SE) = (p hat - psub0) / (SE)

Margin of error for a sample proportion is: 
z * (sqrt((p(1 - p) )/ n )) < m // where m = margin of error
so if we isolate n in one side we can set up a formula like this

n (must be greater than) > z^2 * (p(1-p))/m^2

Guided Practice 6.8
we have p = 0.19
we need to find n
m = 0.04
and Confidence level alpha = 0.95
so that means z = 1.96

plug and play!
n > z^2 * (p(1-p))/m^2
n > (1.96)^2 * (0.19(1-0.19))/(0.04)^2

and that gets us n > 369.5

We need a sample size bigger than 370 in order to be able to say that the 0.19 percent estimate has a 0.04 margin of error with 95% confidence if we have at least 370 sample size.


6.2 Difference of two proportions
SEsub(p1 - p2)
= sqrt(SE^2subp1 + SE^2subp2)
= sqrt((p1(1 - p1))/n1) + (p2(1-p2))/n2) )
where p1 and p2 are sample proportions and n1 and n2 are sample sizes

6.3 Testing for goodness of fit using chi-square

This is a method for assessing a null model when the data are binned.
This is typically done in two circumstances:
1. a sample of cases that can be classified into several groups, determine if the sample is representative of the general pop
2. evaluate whether data resemble a particular distribution like a normal distribution or geometric distribution

H0: jurors are random sample
HA: no random sample, there is racial bias

data:
Race            White   Black   Hispanic  Other   Total
Observed data   205     26      25        19      275
Expected counts 198     19.25   33        24.75   275 


6.3.2 chi-square test baby

so normal test set up is: (point estimate - null value) / SE of point estimate

So we find the z score of each bin.

z1 = (205 - 198 ) / sqrt(198) = 0.50
.
.
.
z4 = (19 - 24.75) / sqrt(24.75) = -1.16

We could add up the absolute value of all z's. which would give us 4.58

but it's more common to add the squared values which is 5.89
Becuase it essentially exaggerates unusual differences between groups.

in summary:
he test statistic ~χ^2 (chi square)
is equal to the sum of ((observed count(i) - null count(i))/(null counti)^2 for all i groups

```
χ^2 follows a new distribution called achi-square distribution.  
Using this distribution, we willbe able to obtain a p-value to evaluate the hypotheses.
```

6.3.3 The chi-square distribution and finding areas 
Chi-square distribution uses degrees of freedom

Chi square test for two-way tables,

basically you get a Z value for every single cell in the table. Exhausting.

6.5.3 Generating the exact null distribution and p-value
The following formula is the binomial model from 3.4

1. n! / ( k! (n - k)! ) // n choose k
2. p^k                  // successes to the success
3. (1 - p ) ^ (n - k)   // failures to the failure
and you times all three together

we can use this formula subsitution k with j, where j = the proportion we are testing against


Lots of bins, buckets, aka group bys, in this chapter. which makes sense, categorical data.

  </details>

<details>
  <summary> <b> Chapter 7 - Introduction to Linear Regression </b> </summary>
<br>
  
I have spent more time with linear regression probably than with any other topic in this book.
Having taken several econometrics type courses, I might not take too many notes here.
I'll just note of novel things or things worth repeating to me.

Residuals are the distance between each obsevation and the model's line.
  
```Correlation: strength of a linear relationship. Denoted by R```

Formula for R
(1 / (n - 1))(sum for each i until n(( xi - xbar ) / (stdevx)) * ((yi - ybar) / (stdevy)) )

Break it down
1. (1 / (n - 1 )) // this part basically averages it all out, the minus 1 in the denominator, I remember trying to prove taht it was needed for a sample in a statistics test
2. sum for each i until n // this part basically means we're going through each observation, each of which has an x and a y value
3. ((xi - xbar) / stdevx) // This is the residual divided by the sample standard deviation. I'm not sure why this is done but it's done for both x here and y after
4. ((yi - xbar) / stdevy) // same as step 3 but for y

You times up each iteration of steps 3 and 4, sum them all up, and then times that by step 1

R^2 explains the strength of a linear fit

I kind of zoomed through this chapter.
  </details>

<details>
  <summary> <b> Chapter 8 - Multiple and Logistic Regression </b> </summary>
<br>

[Intro to Multiple Regression video and following videos in a playlist](https://www.youtube.com/watch?v=sQpAuyfEYZg&list=PLkIselvEzpM5f1HYzIjFt52SD4izsJ2_I)

I recommend wathcing these four videos while reading this last chapter.

* video1
Multiple regression has multiple predictors but a single estimated value still
Adjusted R^2 is (1 - variability of residuals / variability in the outcome (y) )* ( n -1 )/(n - k - 1)
It accounts for model complexity and accuracy.

* video 2
Step wise model selection strategies add or delete one variable at a time, as they step through each candidate for predictors.
two step wise model section strategies:
backward-selection: includes everything at the beginning, drops largest p value, refits model, and repeats
forward-selection: adds a variable until cannot find a statistically significant predictor

* video 3
How to test for regression assumptions
4 assumptions
1. residuals are nearly normal
2. variability of the residuals is nearly constant
3. residuals are independent
4. each variable is linearly related to the outcome
how to test each one?
1. normal probabiltity plot of the residuals. We look for outliers that would indicate long tails in the dist of residuals
2. absolute value of residuals against fitted values scatterplot to see if variability is constant
3. plot of residuals in the order in which they were observed
4. plot of residual values against each predictor variable

* video 4
Logistic regression good for when the response variable is binary
logit transformation = logit(pi) = loge(pi/(1-pi) where pi is psubi

I feel like there wasn't much about logistic regression and more about multiple regression but that's ok. I still have more time to go over logistic regression. Great book.

<details>

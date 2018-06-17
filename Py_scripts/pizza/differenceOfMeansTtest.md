# <a href="https://angelddaz.github.io/bridgetomasters/"> Home </a>
## Walking through a script I wrote several years ago in which I hand coded a Difference of Means t-test

Here is the original [full script](https://github.com/angelddaz/learning_python/blob/master/t_tests/angel_sam_t_test.py) I wrote almost two years ago, or so, sometime near the fall of 2016. I had collected 1300 rows from pizza deliveries both my wife and I made and I wanted to test if we had statistically the same tip average, or mean.

The difference of two means t test section is 5.3 of [Open Intro Statistics](https://github.com/angelddaz/bridgetomasters/blob/master/openintrostatistics.md), which I did not read before writing the original script.


## A walkthrough

### Hypothesis testing setup
So first of all I'm not even sure I set up my hypotheses correctly. I am checking back to chapter 4.3 of [Open Intro Statistics](https://github.com/angelddaz/bridgetomasters/blob/master/openintrostatistics.md) to see what that says. 

To repeat, 
``` Null and alternative hypotheses
The null hypothesis (H0) often represents either a skeptical perspective or a claim to be  tested.   
Thea lternative hypothesis (HA) represents an alternative claim underconsideration and is often represented by a range of possible parameter values
```

H0 : mu_a = mu_s // lines 17 and 18
Ha: mu_a != mu_s 

So, the claim to be tested is that we have two equal tips. This is line with what the textbook outlines. I vaguely remember griefing over whether I was setting up my hypothesis correctly when I first did this.

### A recipe
I am pretty happy with how I used pandas functions to grab all the ingredients I needed for the t test
1. 2 averages // lines 28 and 29
2. 2 standard deviations // lines 31 and 32
3. 2 variances // lines 34 and 35
4. 2 sample counts // lines 37 and 38
5. 1 degrees of freedom // line 40

Then we start mixing them:
1. Make the first denominator by dividing my variance of tips by sample count // line 44
2. Make the second denominator by dividing Sam's variance of tips by her sample count // line 45
3. Adding up both denominators // line 46
4. Square rooting the denominator // line 47
5. Making the numerator, which is simply the means subtracted. Remember, that the null value in this case is 0 because we are testing that the two means have no difference. That means that the formula referenced in figure 5.16 page 232 of [Open Intro Statistics](https://github.com/angelddaz/bridgetomasters/blob/master/openintrostatistics.md)


### Creating our T-statistic and what it means

Here's something I'm realizing now. The ```den``` variable in line 47 is the Standard error of our two means. We divide the difference between the two means by the standard error to get t_stat value or t-score.

line 53 is probably the most abstracted line. For lack of a better word, it is essentially a t distribution table lookup with a t score and degrees of freedom. The degrees of freedom could be much smaller, around 500 value, but it doesn't make much of a difference. Instead of doing (n1 + n2 - 2), I could have chosen the smallest of (n1 -1) and (n2 - 1) which would be around 550 if I remember correctly.

So we get the area under the curve which inside the two tails in our two sided test. When I ran the script locally, I get a p value of 0.3775 which means that our means' difference in a t distribution, lies very close to the middle, or a zero value.

We fail to reject the hypothesis and cannot say that we have the same tips exactly, but also cannot say that we got different tip amounts on average.

### Conclusion
Takeaway for me; if someone as pretty and kind as my wife gets statistically the same tips as me, maybe I shouldn't worry when I get bad tips or had a bad night. It's likely that it was just part of the job, not anything to blame any individuals for.

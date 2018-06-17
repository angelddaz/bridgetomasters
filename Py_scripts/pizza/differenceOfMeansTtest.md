# <a href="https://angelddaz.github.io/bridgetomasters/"> Home </a>
## Walking through a script I wrote several years ago in which I hand coded a Difference of Means t-test

Here is the original [full script](https://github.com/angelddaz/learning_python/blob/master/t_tests/angel_sam_t_test.py) I wrote almost 18 months ago (Jan 2017). I had collected 1300 rows from pizza deliveries both my wife and I made and I wanted to test if we had statistically the same tip average, or mean.

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

* All data  

```python
aDels = data.loc[data['PersonWhoDelivered']=='Angel'][['Tip']]
sDels = data.loc[data['PersonWhoDelivered']=='Sammie'][['Tip']]
``` 

* 2 averages 
```python
mu_a = aDels.mean() #Angel Delivery mean = 3.376236
mu_s = sDels.mean() #Sammie Delivery mean = 3.412869
```

* 2 standard deviations
```python
sigma_a = aDels.std() #Angel stdev = 2.184814
sigma_s = sDels.std() #Sammie stdev = 2.040795

```
* 2 variances
```python
variance_a = aDels.std() * aDels.std() #Angel variance = 4.773414
variance_s = sDels.std() * sDels.std() #Sammie variance = 4.164844
```

* 2 sample counts 
```python
n_a = aDels.count() #Angel sample size = 712
n_s = sDels.count() #Sammie sample size = 589
```

* 1 degrees of freedom
```python
df = n_a + n_s - 2 -1 #n-k-1: degrees of freedom = 1298
```

### Then we start mixing the ingredient:

1. Make the first denominator by dividing my variance of tips by sample count 
```python
den1 = variance_a/n_a #formula chunk: 0.006704
```

2. Make the second denominator by dividing Sam's variance of tips by her sample count
```python
den2 = variance_s/n_s #formula chunk: 0.007071
```

3. Adding up both denominators
```python
den3 = den1+den2      #formula chunk: 0.013775
```
4. Square rooting the denominator
```python
den = math.sqrt(den3) #denominator value: 0.11736812016136079
```


5. Making the numerator, which is simply the means subtracted. 
```python
num = mu_a - mu_s     #numerator value: -0.036633
```

### Finally (math-wise), our T-statistic and p-value

Here's something I'm realizing now. The ```den``` variable in line 47 is the Standard error of our two means. We divide the difference between the two means by the standard error to get t_stat value or t-score.

```python
t_crit = 1.9673
t_stat = num/den
pval = 1-stats.t.sf(t_stat, df)
```
line 53 is probably the most abstracted line. For lack of a better word, it is essentially a t distribution table lookup with a t score and degrees of freedom. The degrees of freedom could be much smaller, around 500 value, but it doesn't make much of a difference. Instead of doing (n1 + n2 - 2), I could have chosen the smallest of (n1 -1) and (n2 - 1) which would be around 550 if I remember correctly.

So we get the area under the curve which inside the two tails in our two sided test. When I ran the script locally, I get a p value of 0.3775 which means that our means' difference in a t distribution, lies very close to the middle, or a zero value.

We fail to reject the hypothesis and cannot say that we have the same tips exactly, but also cannot say that we got different tip amounts on average.

### Conclusion
Takeaway for me; if someone as pretty and kind as my wife gets statistically the same tips as me, maybe I shouldn't worry when I get bad tips or had a bad night. It's likely that it was just part of the job, not anything to blame any individuals for.

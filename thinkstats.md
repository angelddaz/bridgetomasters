# <a href="https://angelddaz.github.io/bridgetomasters/"> Home </a>

# My Understanding/Condensation of each [Think Statistics: Exploratory Data Analysis in Python](http://greenteapress.com/wp/think-stats-2e/) Chapter

Github repository of the [book and code](f)
# <a href="https://angelddaz.github.io/bridgetomasters/"> Home </a>

If you are looking at this with an html at the end of your URL, I highly recommend checking out the [.md version](https://github.com/angelddaz/bridgetomasters/blob/master/thinkstats.md) instead. Most of the markdown formatting goes out the window in the html site.


<details>
  <summary> <b> Chapter 1 - Exploratory data analysis </b> </summary>
<br>

This chapter seems like an overview of data analysis and how it works better than anecdotes.
It also has some basic python for data anlaysis problems [here](https://github.com/AllenDowney/ThinkStats2/blob/master/code/chap01ex.ipynb). I'm not going to work on them now because I am very familiar with these type of problems.

</details>

<details>
  <summary> <b> Chapter 2 - Distributions</b> </summary>
<br>
  
```
When you start working with a new dataset, 
I suggest you explore the vari-ables you are planning to use one at a time, 
and a good way to start is bylooking at histograms.
```

A lot of material is being repeated from the open intro statistics book which is to be expected.
so I'm taking a lot less notes than before.


</details>

<details>
  <summary> <b> Chapter 3 - Probability mass functions </b> </summary>
<br>
PMFs are kind of like histograms except that they are a single line in steps that show the distributino of a dataset.


</details>


<details>
  <summary> <b> Chapter 4 - Cumulative distribution functions </b> </summary>
<br>

CDFs work well with large datasets because it works with percentiles, the more you go to the right, the closer you get to a CDF value of 1.


</details>

<details>
  <summary> <b> Chapter 5 - Modeling Distributions </b> </summary>
<br>
again a repetition of open intro statistics with a few more mathematical distributions thrown in, like the Pareto distribution.


  </details>

<details>
  <summary> <b> Chapter 6 - Probability Density functions </b> </summary>
<br>

This is a very [useful chart](https://github.com/angelddaz/bridgetomasters/blob/master/Py_scripts/misc/dist_framework.PNG) on how all these distributions so far are related.

<img src="https://github.com/angelddaz/bridgetomasters/blob/master/Py_scripts/misc/dist_framework.PNG" alt = "Google Form">


skewness - very little area under the right side of the curve is the one that's right skewed.

  </details>

<details>
  <summary> <b> Chapter 7 - Relationships between variables </b> </summary>
<br>
A lot of repeated material again.
  
7.4 Covariance
Cov(X,Y) = the sum of every i (xi - xbar)(yi - ybar)

Pearson's correlation = Cov(X,Y) / ((stdevx)(stdevy))

Pearson’s correlation is always between -1 and +1 (inclusive)

</details>

<details>
  <summary> <b> Chapter 8 - Estimation </b> </summary>
<br>
  
no notes here :/

</details>

<details>
  <summary> <b> Chapter 9 - Hypothesis Testing </b> </summary>
<br>
  

Hypothesis testing steps:
1. choose test statistics
2. define a null hypothesis ```based on the assumption that the apparent effect is not real```
3. computer a p-value
4. interpret results, if the p-value is low, it is said to be statistically significant

</details>

<details>
  <summary> <b> Chapter 10 - Linear Least Squares</b> </summary>
<br>
  
linear regression

</details>

<details>
  <summary> <b> Chapter 11 - Regression </b> </summary>
<br>

11.6 Logistic Regression
```logo = β0 + β1x1 + β2x2 + ε 
Where o is  the  odds  in  favor  of  a  particular  outcome
```
Explanatory variable is binary


</details>

<details>
  <summary> <b> Chapter 12 - Time series analysis </b> </summary>
<br>
  

Most time series analysis is based that the observed series is the sum of the following three components:
* trend: a mooth function that captures persistent changes
* seasonality: periodic variation (reminds me of the talk a data scientist from Facebook gave at NY R 2018 conference about a relatively simple but powerful time series algorithm which took into account all kinds of seasonality.)
* noise: random variation around the long-term trend


</details>

<details>
  <summary> <b> Chapter 13 - Survival Analysis </b> </summary>
<br>
S(t) = 1 - CDF(t) where t is time and S is the survival function
Hazard function is survivability at a given t pretty much it looks like

</details>

<details>
  <summary> <b> Chapter 14 - Analytic methods </b> </summary>
<br>

Lots of central limit theorem

</details>

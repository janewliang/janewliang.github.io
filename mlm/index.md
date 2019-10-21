---
layout: default
title: Matrix Linear Models
---

<h2><a href="{{ page.url }}" style="color:inherit">{{ page.title }}</a></h2>

<i>This page is currently under construction.</i>

Matrix linear models are a flexible and computationally efficient framework for detecting associations in structured high-throughput data. Examples include measuring gene transcription on a genome-wide scale using microarrays; the screening of genetic mutant libraries; screening for chemicals in human tissues using mass spectrometry; and subjecting cancer cells to a range of treatment drugs in order to identify genetic features targeted by particular therapies. 

We have developed closed-form least squares estimates applied to <a href="#genetic">genetic screening data</a> as well as <a href="#sparse">sparse algorithms</a>. 

We implemented our methods using the high-level programming language [Julia](https://julialang.org/), which combines ease of prototyping with computational speed.

---

<h3><a name="genetic">Matrix linear models for high-throughput chemical genetic screens</a></h3>

We develop a matrix linear model framework that allows us to model relationships between mutants and conditions in a simple, yet flexible, multivariate framework. It encodes both categorical and continuous relationships to enhance detection of associations. Our closed-form least squares estimates are fast because they take advantage of the structure of matrix linear models. We evaluate our method’s performance in simulations and in an *Escherichia coli* chemical genetic screen, comparing it with an existing univariate approach based on modified t-tests. We show that MLMs perform slightly better than the univariate approach when mutants and conditions are classified in nonoverlapping categories, and substantially better when conditions can be ordered in dosage categories. Therefore, it is an attractive alternative to current methods, and provides a computationally scalable framework for larger and complex chemical genetic screens. 

<p style="margin-left: 20px; text-indent: -20px;"><b>Liang, Jane W.</b>, Robert J. Nichols, and Śaunak Sen. "Matrix linear models for high-throughput chemical genetic screens." *Genetics* (2019): genetics-302299, <a href="https://doi.org/10.1534/genetics.119.302299">doi.org/10.1534/genetics.119.302299</a>.</p>

[Supplemental code](https://bitbucket.org/jwliang/mlm_gs_supplement/src/default/): Julia and R code used to analyze the results and reproduce the figures in the paper.
<br>[matrixLM.jl](https://github.com/janewliang/matrixLM.jl): Julia package with core functions to obtain closed-form least squares estimates for matrix linear models.
<br>[GeneticScreen.jl](https://github.com/janewliang/GeneticScreen.jl): Julia package that extends matrixLM.jl to provide pre- and post-processing for the analysis of high-throughput genetic screens using matrix linear models.

---

<h3><a name="sparse">Sparse matrix linear models for structured high-throughput data</a></h3>

We induce sparsity in matrix linear models using an L<sub>1</sub> penalty and consider the case when the response matrix and the covariate matrices are large. Standard methods for estimation of these penalized regression models fail if the problem is converted to the corresponding univariate regression problem, motivating our fast estimation algorithms (coordinate descent, FISTA, and ADMM) that utilize the structure of the model. Our method's performance was evaluated on simulated data based on an environmental screening study and two <i>Arabidopsis thaliana</i> genetic datasets with multivariate responses. 

<p style="margin-left: 20px; text-indent: -20px;"><a href="https://arxiv.org/abs/1712.05767">arxiv.org/abs/1712.05767</a></p>

[Supplemental code](https://bitbucket.org/jwliang/mlm_l1_supplement/src/default/): Julia and R code used to analyze the results and reproduce the figures in the paper.
<br>[matrixLMnet.jl](https://github.com/janewliang/matrixLMnet.jl): Julia package with core functions to obtain L<sub>1</sub>-penalized estimates for matrix linear models.
<br>[Lightning talk](https://www.youtube.com/watch?v=LbWMmxMiZFQ): Video recording of a talk I gave at [JuliaCon 2017](https://juliacon.org/2017/) in Berkeley, CA.

---

<h3><a name="ref">References</a></h3>

<p style="margin-left: 20px; text-indent: -20px;">
</p>
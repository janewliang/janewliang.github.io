---
layout: default
title: Matrix Linear Models
---

<h2><a href="{{ page.url }}" style="color:inherit">{{ page.title }}</a></h2>

<i>This page is currently under construction.</i>

Matrix linear models are a flexible and computationally efficient framework for detecting associations in structured high-throughput data. Examples include measuring gene transcription on a genome-wide scale using microarrays; the screening of genetic mutant libraries; screening for chemicals in human tissues using mass spectrometry; and subjecting cancer cells to a range of treatment drugs in order to identify genetic features targeted by particular therapies. 

We implemented our methods using the high-level programming language Julia, which combines ease of prototyping with computational speed. Installation instructions, documentation, and tutorials are available at [julialang.org](https://julialang.org/). 

---

<h3>Matrix linear models for genetic screens</h3>

I applied the least squares approach to *E. coli* genetic screening data and demonstrated its superior speed and flexibility over an existing method.

<p style="margin-left: 20px; text-indent: -20px;"><b>Liang, Jane W.</b>, Robert J. Nichols, and Śaunak Sen. "Matrix linear models for high-throughput chemical genetic screens." Genetics (2019): genetics-302299, [https://doi.org/10.1534/genetics.119.302299](https://doi.org/10.1534/genetics.119.302299).</p>

[Supplemental code](https://bitbucket.org/jwliang/mlm_gs_supplement/src/default/): Julia and R code used to analyze the results and reproduce the figures in the paper.
<br>[matrixLM.jl](https://github.com/janewliang/matrixLM.jl): Julia package with core functions to obtain closed-form least squares estimates for matrix linear models.
<br>[GeneticScreen.jl](https://github.com/janewliang/GeneticScreen.jl): Julia package that extends matrixLM.jl to provide pre- and post-processing for the analysis of high-throughput genetic screens using matrix linear models.

---

<h3>L<sub>1</sub>  penalized sparse matrix linear models</h3>

Standard methods for estimation of these penalized regression models fail if the problem is converted to the corresponding univariate regression problem. All three fast algorithms (coordinate descent, FISTA, and ADMM) used to obtain sparse solutions are implemented in an open-source Julia package. Our method's performance was evaluated on simulated data based on an environmental screening study and two <i>Arabidopsis thaliana</i> genetic datasets with multivariate responses. 

<p style="margin-left: 20px; text-indent: -20px;">[https://arxiv.org/abs/1712.05767](https://arxiv.org/abs/1712.05767)</p>

[Supplemental code](https://bitbucket.org/jwliang/mlm_l1_supplement/src/default/): Julia and R code used to analyze the results and reproduce the figures in the paper.
<br>[matrixLMnet.jl](https://github.com/janewliang/matrixLMnet.jl): Julia package with core functions to obtain L<sub>1</sub>-penalized estimates for matrix linear models.
<br>[Lightning talk](https://www.youtube.com/watch?v=LbWMmxMiZFQ): Video recording of a talk I gave at [JuliaCon 2017](https://juliacon.org/2017/) in Berkeley, CA.
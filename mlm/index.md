---
layout: default
title: Matrix Linear Models
---

<h2><a href="{{ page.url }}" style="color:inherit">{{ page.title }}</a></h2>

*This page is currently under construction.*

Matrix linear models are a flexible and computationally efficient framework for detecting associations in structured high-throughput data. Examples of high-throughput data include: 
<ul style="margin:-20px;">
<li>Measuring gene transcription on a genome-wide scale using microarrays.</li>
<li>Screening a genetic mutant library under different growth conditions to analyze the effects of gene-condition interactions on colony size.</li>
<li>Subjecting various cancer cells to a range of treatment drugs in order to identify genetic features targeted by particular therapies.</li>
<li>Using mass spectrometry to detect levels of chemicals human tissues.</li>
</ul>

<center><img src="{{ site.url }}/media/mlm_diagram.png" width="384" height="288" title="Visualization of matrix linear models."/></center>

Under the supervision of [&#346;aunak Sen](http://senresearch.org), I developed closed-form least squares estimates applied to high-throughput <a href="#genetic">genetic screening data</a> as well as <a href="#sparse">sparse algorithms</a>. Our estimation methods are fast because we leverage matrix properties and the structure of the data. These methods are implemented in open-source code using the high-level programming language [Julia](https://julialang.org/), which combines ease of prototyping with computational speed. 

---

<h3><div id="genetic"><a href="#genetic" style="color:inherit">Matrix linear models for genetic screens</a></div></h3>

We develop closed-form least squares estimates and demonstrate their ability to model relationships between mutants and conditions in genetic screening data. Matrix linear models can encode both categorical and continuous relationships to enhance detection of associations. We evaluate our method’s performance in simulations and in an *Escherichia coli* chemical genetic screen [^fn4], comparing it with an existing univariate approach based on modified t-tests [^fn2]. We show that matrix linear models perform slightly better than the univariate approach when mutants and conditions are classified in nonoverlapping categories, and substantially better when conditions can be ordered in dosage categories. 

<p style="margin-left: 20px; text-indent: -20px;"><b>Liang, J. W.</b>, Nichols, R. J., & Sen, Ś. (2019). Matrix linear models for high-throughput chemical genetic screens. <i>Genetics</i>, 212(4), 1063–1073. doi: <a href="https://doi.org/10.1534/genetics.119.302299">10.1534/genetics.119.302299</a></p>

[Supplemental code](https://bitbucket.org/jwliang/mlm_gs_supplement/src/default/): Julia and R code used to analyze the results and reproduce the figures in the paper.  
[matrixLM.jl](https://github.com/janewliang/matrixLM.jl): Julia package with core functions to obtain closed-form least squares estimates for matrix linear models.  
[GeneticScreen.jl](https://github.com/janewliang/GeneticScreen.jl): Julia package that extends matrixLM.jl to provide pre- and post-processing for the analysis of high-throughput genetic screens using matrix linear models.  

---

<h3><div id="sparse"><a href="#sparse" style="color:inherit">Sparse matrix linear models</a></div></h3>

We induce sparsity in matrix linear models using an L<sub>1</sub> penalty and consider the case when the response matrix and the covariate matrices are large. Standard methods for estimation of these penalized regression models fail if the problem is converted to the corresponding univariate regression problem, motivating our fast estimation algorithms (coordinate descent, FISTA, and ADMM) that utilize the structure of the model. Our method's performance was evaluated on simulated data based on an environmental screening study [^fn5] and two <i>Arabidopsis thaliana</i> genetic datasets with multivariate responses [^fn1]<sup>,</sup>[^fn3]. 

<p style="margin-left: 20px; text-indent: -20px;"><b>Liang, J. W.</b> & Sen, Ś. (2019). Sparse matrix linear models for structured high-throughput data. <a href="https://arxiv.org/abs/1712.05767">arXiv:1712.05767v1[stat.CO]</a></p>

[Supplemental code](https://bitbucket.org/jwliang/mlm_l1_supplement/src/default/): Julia and R code used to analyze the results and reproduce the figures in the paper.  
[matrixLMnet.jl](https://github.com/janewliang/matrixLMnet.jl): Julia package with core functions to obtain L<sub>1</sub>-penalized estimates for matrix linear models.  
[Lightning talk](https://www.youtube.com/watch?v=LbWMmxMiZFQ): Video recording of a talk I gave at [JuliaCon 2017](https://juliacon.org/2017/) in Berkeley, CA.  

---

[^fn1]: <sup>Ågren, J., Oakley, C. G., McKay, J. K., Lovell, J. T., & Schemske, D. W. (2013). Genetic mapping of adaptation reveals fitness tradeoffs in Arabidopsis thaliana. *Proceedings of the National Academy of Sciences*, 110(52), 21077-21082.</sup>

[^fn2]: <sup>Collins, S. R., Schuldiner, M., Krogan, N. J., and Weissman, J. S. (2006). A strategy for extracting and analyzing large-scale quantitative epistatic interaction data. *Genome biology*, 7(7):R63.</sup>

[^fn3]: <sup>Lowry, D. B., Logan, T. L., Santuari, L., Hardtke, C. S., Richards, J. H., DeRose-Wilson, L. J., ... & Juenger, T. E. (2013). Expression quantitative trait locus mapping across water availability environments reveals contrasting associations with genomic features in Arabidopsis. *The Plant Cell*, 25(9), 3266-3279.</sup>

[^fn4]: <sup>Nichols, R. J., Sen, S., Choo, Y. J., Beltrao, P., Zietek, M., Chaba, R., Lee, S., Kazmierczak, K. M., Lee, K. J., Wong, A., et al. (2011). Phenotypic landscape of a bacterial cell. *Cell*, 144(1):143–156.</sup>

[^fn5]: <sup>Woodruff, T. J., Zota, A. R., & Schwartz, J. M. (2011). Environmental chemicals in pregnant women in the United States: NHANES 2003–2004. *Environmental health perspectives*, 119(6), 878-885.</sup>
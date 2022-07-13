---
layout: default
title: PanelPRO
---

<h2><a href="{{ page.url }}" style="color:inherit">{{ page.title }}</a></h2>

Risk evaluation to identify individuals who are at greater risk of cancer as a result of heritable pathogenic variants is a valuable component of personalized clinical management. Using principles of Mendelian genetics, Bayesian probability theory, and variant-specific knowledge, Mendelian models derive the probability of carrying a pathogenic variant and future cancer risk, based on family history. 

<center><img src="{{ site.url }}/media/panelpro_flowchart.png" style="max-width: 75%; height:auto; margin-bottom:0; margin-top:-10px" title="Mendelian model flowchart"/></center>

Existing Mendelian models have been widely adopted, but are generally limited to specific genes and syndromes. However, the rise of multi-gene panel germline testing has spurred the discovery of many new gene-cancer associations that are not currently accounted for in these models. 

The [BayesMendel Lab](https://projects.iq.harvard.edu/bayesmendel) presents PanelPRO, a flexible, efficient Mendelian risk prediction framework that incorporates an arbitrary number of genes and cancers, overcoming the computational challenges that arise because of the increased model complexity. Using simulations and a high-risk clinical cohort with germline panel testing data [^fn1], we evaluate model performance, validate the reverse-compatibility of our approach with existing Mendelian models, and illustrate its usage. 

A clinical validation of PanelPRO-22, a 22-gene and 17-cancer model, is in progress. 

<p style="margin-left: 20px; text-indent: -20px;"><b>Liang, J. W.</b>, Idos, G. E., Hong, C., Gruber, S. B., Parmigiani, G., & Braun, D. (2022). Statistical methods for Mendelian models with multiple genes and cancers. <i>Genetic Epidemiology</i>. doi: <a href="https://doi.org/10.1002/gepi.22460">10.1002/gepi.22460</a>.</p>

<p style="margin-left: 20px; text-indent: -20px;">Lee, G.*, <b>Liang, J. W.</b>*, Zhang, Q., Huang, T., Choirat, C., Parmigiani, G., & Braun, D. (2021). Multi-syndrome, multi-gene risk modeling for individuals with a family history of cancer with the novel R package PanelPRO. <i>eLife</i>, 10, e68699. doi: <a href="https://doi.org/10.7554/eLife.68699">10.7554/eLife.68699</a>.</p>

[PanelPRO](https://projects.iq.harvard.edu/bayesmendel/panelpro): R package for running multi-gene, multi-cancer Mendelian risk prediction models.  
[Supplemental code](https://github.com/janewliang/PanelRePROducible): R code used to analyze the results and reproduce the figures in Liang et al. (2021).  
[Insight article](https://elifesciences.org/articles/73380) "Risk Modeling: Predicting cancer risk based on family history" written by Michelle F Jacobs on Lee et al. (2021). 

\* indicates equal contributions

---

[^fn1]: <sup>Idos, G. E., Kurian, A. W., Ricker, C., Sturgeon, D., Culver, J. O., Kingham, K. E., ... & Gruber, S. B. (2019). Multicenter prospective cohort study of the diagnostic yield and patient experience of multiplex gene panel testing for hereditary cancer risk. *JCO Precision Oncology, 3*, 1-12.</sup>
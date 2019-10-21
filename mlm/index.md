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

<h3><a name="genetic">Matrix linear models for genetic screens</a></h3>

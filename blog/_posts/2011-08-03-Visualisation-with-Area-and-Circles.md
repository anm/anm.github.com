---
layout: post
title: Visualisation with Area and Circles
tags: [visualisation]
---

In this post I will explain why the use of area in visualisations should
usually be avoided. Circles do have some uses though, so I also offer advice
on how to use them.

Visual elements such as area, length and position on a scale can communicate
numbers but they do so with different accuracy[1]. A good visualisation should
allow the viewer to understand the number presented. The problem is that
people do not, in general, judge the area of circles accurately. It is
therefore better to use a more accurate visual element, such as a line against
a scale.

Circles do have some advantages though which might mean you still want to use
them. Their position can communicate other variables. See the <a
href="/blog/2011/03/11/github-punchcard.html">github punchcard</a> for an
example.

How should circles be sized? Making the diameter proportional to the value
tends to overemphasise differences. This is also true of scaling both sides of
a rectangle. Using circle area instead, the increase in size of a larger
circle is not usually perceived to indicate as large an increase in the value
as it should. "people's judgements of area typically are not proportional to
area, but rather to area raised to a power less than one". [3]

One idea is to scale the circle to match typical human perception.
A possible scaling law is given in Tufte[2]:
          reported perceived area = (actual area)^x, where x = 0.8 ± 0.3

The problem with this idea is that perception varies greatly with many
variables: among people and with the context of the graphic, for example.
Tufte recommends that the dimensions of visual elements should be directly
proportional to the value represented. The justification is that there is so
much variability in perception that it will never be correct, so at least make
something right.

The circles should preferably by labelled so that the actual values can be
read. A note saying how the size of the circle relates to the value could be
useful. It is probably best to acknowledge that area variations will only give a
rough qualitative impression of differences in values.

It is even more complicated when you start putting the circles in a bigger
graphic, for example neighbouring circles and other features affect how the
size of a circle is perceived on a map. [4]

References and Bibliography
---------------------------

1\. Graphical Perception: Theory, Experimentation, and Application to the Development of Graphical Methods<br>
William S. Cleveland and Robert McGill<br>
Journal of the American Statistical Association, Vol. 79, No. 387 (Sep., 1984), pp. 531-554<br>
http://www.cs.ubc.ca/~tmm/courses/cpsc533c-04-spr/readings/cleveland.pdf

2\. Tufte, 2001: "The Visual Display of Quantitative Information", p55

3\. Judgments of Circle Sizes on Statistical Maps<br>
William S. Cleveland, Charles S. Harris and Robert McGill<br>
Journal of the American Statistical Association, Vol. 77, No. 379 (Sep., 1982), pp. 541-547<br>
http://www.jstor.org/stable/2287708

4\. Influences of Map Context on Circle Perception<br>
Patricia P. Gilmartin<br>
Annals of the Association of American Geographers, Vol. 71, No. 2 (Jun., 1981), pp. 253-258<br>
http://www.jstor.org/stable/2562795

5\. How Numbers Are Shown: A Review of Research on the Presentation of Quantitative Data in Texts<br>
Michael MacDonald-Ross<br>
AV Communication Review, Vol. 25, No. 4 (Winter, 1977), pp. 359-409<br> 
http://www.jstor.org/pss/30217944

6\. <a href="http://qwertyrob.blogspot.com/2011/01/circles-on-maps.html">
Circles on maps</a><br>
Rob Waller

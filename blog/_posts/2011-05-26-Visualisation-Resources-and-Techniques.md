---
layout: post
title: "Learning Visualisation: Tools, Books, Notes"
tags: [visualisation]
---

I started to become interested in visualisation last year, particularly at <a
href="http://culturehackscotland.com/">Culture Hack Scotland</a>. They
provided data, such as footfall in central Edinburgh, which some people
visualised. I wanted to try something like that but was not sure how to start.

As a programmer, my first thought before doing something is to find out how it
nhas been done before and to use libraries. I struggled to find a clear good
answer. I also didn't know much about it. Since then I have been asking
people, reading and trying things out, so I think I can now make some
recommendations to a beginner to the field.

SVG is a good choice of graphics format. It can be used directly on the web
and made interactive or animated with javascript. There are various tools for
working with it, from programming libraries to Inkscape and other drawing
tools. You could also use postscript / pdf but that seems rather less
convenient for most tasks.

As for libraries, I was expecting there to be some clear winners for this but
there are not. I think the reason for this may be that good visualisations are
often original. For example, the rose diagram, a favourite of <a
href="http://en.wikipedia.org/wiki/Edward_Tufte">Tufte</a> which, by clearly
showing deaths in the army caused by poor sanitation, persuaded the British
government to improve conditions and saved lives. O'Reilly's Beautiful Data
also argues that beautiful visualisations must be original. Higher level
libraries can restrict what you can make.

<a title="By w:Florence Nightingale
(1820–1910). (http://www.royal.gov.uk/output/Page3943.asp) [Public domain],
via Wikimedia Commons"
href="https://commons.wikimedia.org/wiki/File%3ANightingale-mortality.jpg"><img
width="800" alt="Nightingale-mortality"
src="//upload.wikimedia.org/wikipedia/commons/thumb/1/17/Nightingale-mortality.jpg/800px-Nightingale-mortality.jpg"/></a>

There are libraries for standard charts but even in these cases they do not
really offer much. For example, drawing a bar chart is a matter of drawing
rectangles. The scales can cause a bit more work, but it's not a big deal
really.

I did try some charting libraries: Google Charts for one. I found it
inconvenient and limiting. I was trying to make something visually very
similar to github's <a
href="/blog/2011/03/11/github-punchcard.html">punchcard</a>, which is made
with it. I started by copying how they had done it. Generating the GET request
string was fairly unpleasant. Once I'd done it, it worked to start with but as
soon as I added more data it complained the URL was too long. I found I could
then use POST instead so I changed, with more fiddling. Then, having done all
that, I found that the size in pixels of the output image was limited below
what I required. I gave up on this and decided to do it manually.

Everyone I spoke to who got stuff done at the Culture Hack used low level
drawing commands. It seems that this is the way to go. I used this method with
the Perl SVG module to visualise source repositories. It works perfectly
reasonably.

Some libraries worth looking at for SVG:

 - <a href="http://raphaeljs.com/">Rafaël</a> - Javascript, shape drawing level API.
 - <a href="http://mbostock.github.com/d3">d3</a> - Javascript. Has some good looking visualisations, including a graph drawer.
 - Perl SVG module. I used this to visualise git commit times.

Other useful visualisation / data tools:

 - R is a powerful statistics package which has various visualisation
  packages. I've used it for contour plots, heatmaps and 3D surface plots.
 - Matlab
 - Excel
 - Google Spreadsheets now has pivot tables. These are handy for data exploration.
 - Google Refine. Helps clean up data, e.g. normalise capitalisation and spelling.
 - <a href="http://www.texample.net/tikz/examples/">TikZ</a>. This is a very nice LaTeX graphics library.

Books
-----

The first book I read on this subject was O'Reilly's Beautiful
Visualisations. I was initially rather disappointed but I think this is in part
because of the nature of the subject. When I learn a new subject, I want a
theoretical overview and introduction the main concepts and principles. I am
used to this in more purely technical subjects. This book, and to a lesser
extent some others I have read, did not do this. This book is mostly a
collection of reports on various visualisation projects. It may serve as a
source of inspiration but it does not provide any overview or principles.

I then read Tufte's second book [2]. I was expecting this to be much better
because Tufte seems to be considered the master of visualisation and his books
are highly regarded. Unfortunately I found again a book of examples with little
theory or practical guidance for designing my own visualisations. I also did
not like how he seemed to jump from one subject to the next - it often felt
like I had missed a page. This style I think was because he was really just
making notes on the image on each page, rather than having some bigger theory
or idea to explain.

There were some more general points though, for example the use of colour. A
principle here is not to use large areas of strong colour but to have neutral
background and highlight some parts with colour.

I then read a paper [1] which was much more what I was expecting. This outlined
some basic methods of visually communicating quantitative values and evaluated
some of them.

I am currently reading Tufte: Visual Display of Quantitative Information. This
seems to try and introduce some principles but they are a poor attempt. For
example, "Graphical Excellence" is defined pretty much tautologically, near
enough, "Excellent Graphic is Excellent". The book smells very nice though.

Some principles do seem useful though, particularly to maximise the
information to ink ratio. This is similar to writing natural languages and code.

<blockquote>
<p>
Vigorous writing is concise. A sentence should contain no unnecessary words
[and] a paragraph no unnecessary sentences, for the same reason that a drawing
should have no unnecessary lines and a machine no unnecessary parts. This
requires not that the writer make all his sentences short, or that he avoid
all detail and treat his subjects only in outline, but that every word tell.
</p>

<p>— Elements of Style, William Strunk, Jr. - 1918</p>
</blockquote>

I would like to learn more about the perception of data graphics. For example,
if you present some circles sized to represent some data, do people perceive
the value as the diameter of the circle, the area, or something else? Is it
even linear? Should your graphics be adjusted to allow for human perceptual
anomalies?

There is of course the artistic aspect to the design as well. If art is theft,
books of good visualisations like I have seen should help in this regard. I
would rather be able to produce something correct and functional first though.

Summary
-------

In general, it seems best to use an API at the shape drawing
level. Visualisation libraries are often more trouble than they are worth,
and they will limit your ability to create an original visualisation.

Use SVG in general and for the web. For a paper, TikZ, a LaTeX library, can
produce very nice graphics.

Read Tufte, but don't expect much theory, it's more a catalogue of ideas and
critique. If you are interested in things like the perception of graphics you
need to search the literature for research papers.

References
----------

1\. Graphical Perception: Theory, Experimentation, and Application to the Development of Graphical Methods<br>
William S. Cleveland and Robert McGill<br>
Journal of the American Statistical Association, Vol. 79, No. 387 (Sep., 1984), pp. 531-554<br>
http://www.cs.ubc.ca/~tmm/courses/cpsc533c-04-spr/readings/cleveland.pdf

2\. Envisioning Information<br>
Edward Tufte
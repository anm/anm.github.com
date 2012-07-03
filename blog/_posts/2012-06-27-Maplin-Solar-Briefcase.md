---
layout: post
title: Testing a Maplin Solar Briefcase and Maximum Power Point
tags: [electronics]
---

I was in Maplin a while ago and saw a 5W solar panel for sale for £15. I
bought it with a vague idea of using it to power <a href="/radio">my radio</a>
on <a href="/sota">expeditions</a> but mostly just for interest and to learn.

I didn't know anything about photovoltaics at the time and I decided to test
the panel and try to work out what it did. I set it up in full sunlight,
pointing straight at the sun. I measured the voltage and current output when
loaded with various resistors. I then tried the same thing under some halogen
light bulbs. Don't trust the figures too much as I was using <a
href="/blog/2012/05/21/Multimeters-available-in-UK.html">cheap multimeters</a>, one
of which I later discovered changed its readings when bent.

<img src="/res/2012-06-27-Maplin-Solar-Briefcase/sun.png">
<img src="/res/2012-06-27-Maplin-Solar-Briefcase/lamp.png">

The maximum power output is less than 2W, when pointed directly at the sun on
a clear day and with a nearly optimal load. I was not impressed.

There is a point on the VI curve where maximum power is extracted but I could
not see any simple way to optimise the load for this. Under different lighting
both the voltage and current of the maximum power point (MPP) change.

I decided to read up on solarvoltaics and maximum power point tracking (MPPT)
which someone had mentioned to me. The wikipedia page on <a
href="http://en.wikipedia.org/wiki/Maximum_power_point_tracking">MPPT</a>
shows this plot of the VI curves from a solar cell model. Reassuringly <a
href="/res/2012-06-27-Maplin-Solar-Briefcase">my data</a> follows this general
shape.

<img
src="http://upload.wikimedia.org/wikipedia/commons/d/d8/Solar-Cell-IV-curve-with-MPP.png"
alt="VI curves of model solar cell."/>

At this point I started designing a MPPT, but for this panel it is not
useful. The maximum MPP is at around 13V, the minimum MPP worth considering is
around 11V. The power loss of maintaining a fixed 13V out irrespective of
irradiance rather than adapting is lower than that of inserting a switch mode
converter.

I now have a 15W ET Solar panel which exceeds its power specification. I've
not done much testing on it yet but I'll be using it in my touring bike setup
which I'm working on now.
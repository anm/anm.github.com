---
layout: post
title: Vivitar Charger for Canon NB2L Battery
tags: [electronics]
---

I bought this battery charger with a Canon EOS 350D, my first SLR. I wanted to
check if it was any good before I trusted it with a new battery. I am designing
a power system for my bike at the moment and have been reading about batteries
and methods of charging them so I am interested to see how it works and need
to decide whether to use it on my bike or to make my own charger.

<a href="http://www.flickr.com/photos/58967572@N03/6838509368/" title="Vivitar charger for Canon NB2L lithium battery - front case by mm0hai, on Flickr"><img src="http://farm8.staticflickr.com/7178/6838509368_63b77a3b61.jpg" width="343" height="500" alt="Vivitar charger for Canon NB2L lithium battery - front case"></a>

Taking it Apart
===============

One of the first things I noticed was the missing components. The filter
inductors and capacitors on the mains input are missing. These components are
important in a switching power supply to avoid transmitting noise over the HF
spectrum. Probably what has happened is they were put in to meet regulator
requirements, then once the design had been approved they were removed to save
money - most people would not notice. This is really nasty and poor quality,
and probably illegal.

<a href="http://www.flickr.com/photos/58967572@N03/6984633733/" title="Vivitar charger for Canon NB2L lithium battery - Missing filter inductors by mm0hai, on Flickr"><img src="http://farm8.staticflickr.com/7182/6984633733_4d0d050b5d.jpg" width="500" height="375" alt="Vivitar charger for Canon NB2L lithium battery - Missing filter inductors"></a>

<a href="http://www.flickr.com/photos/58967572@N03/6984634431/" title="Vivitar charger for Canon NB2L lithium battery - Missing components by mm0hai, on Flickr"><img src="http://farm8.staticflickr.com/7182/6984634431_111b073a25.jpg" width="473" height="500" alt="Vivitar charger for Canon NB2L lithium battery - Missing com-pents"></a>

There is no DC converter chip or microcontroller - it is made from discrete
components and a comparator IC.

There are some more <a
href="http://www.flickr.com/photos/58967572@N03/sets/72157629225738410/">photos
on flickr</a>.

Correctness
===========

Does the charger correctly implement a charging algorithm which is good for
the battery?

I investigated the output by loading it with resistors. I powered the charger
with the DC "car charger" input rather than the mains.

<img src="/res/2012-03-14-Vivitar-lithium-battery-charger/VI-curve.png"
alt="Graph of current and voltage output of charger with different loads. A table of this data is linked from this page.">

The data shown above are <a
href="/res/2012-03-14-Vivitar-lithium-battery-charger/VI-curve">here</a>.

The charger supplies 0.57A until the voltage reaches somewhere between 7.35
and 8.22 volts and then eventually settles down to a constant voltage of 8.39
volts.

The battery I have is 7.2V, 1200mAh (more than the original battery). 0.57A
gives a charge rate of 0.78C. Between 0.2 and 0.7 C is recommended by [2] so
this seems quite reasonable. I don't have a datasheet for the battery so I
will assume the typical peak voltage of 4.2V / cell, 3.6V nominal. This means
the maximum voltage from the charger should be 8.4V, so it is within a +/-
50mV tolerance[1]. Within the normal charging range, it seems to do the right
thing.

However, typically when a cell is discharged to below about 2.5V, it must be
charged at 0.1C or less until it reaches 3V [3]. The charger is happy to
supply 0.78C at 4.93V, or 2.47V / cell. It seems the charger could damage
batteries which are severely discharged, perhaps by self discharge from being
stored for some time.

The other difficulty is when to terminate the charge. This should happen when
charging current drops to something like 10% to 3% of the peak charge current,
depending on which source I believe. That is 17mA minimum anyway, and I did
not measure that low, so I don't know what the charger does. It is still
charging at 42mA though. Some sources recommend a 1h timer to limit the
constant voltage phase. It looks like the charger doesn't have this. One way
to simplify the termination requirement could be to use a voltage less than the
peak, which this charger seems to do by 10mV. This might avoid overcharging
but not fully charge the battery. I don't know for sure though.

I also note that the charger does not make use of the temperature terminal on
the battery.

Efficiency
==========

At 14V in and 0.57A, 7.32V out, efficiency was 68%. That's rather
disappointing. I think 95% should be possible, or at least 90%. I got a rough
idea of this from the datasheet for the MAX1556 - it claims around 95%
efficiency at 600mA, 5V in, 3.3V out.

Conclusion
==========

The charger is probably adequate if the battery is not discharged too far, it
is supervised, and the battery is not left in the charger for too long. I will
use it for now but would really prefer something better.

References
==========

1. http://batteryuniversity.com/learn/article/charging_lithium_ion_batteries
2. https://www.powerstream.com/li.htm
3. http://www.ka7oei.com/ft817_roar.html
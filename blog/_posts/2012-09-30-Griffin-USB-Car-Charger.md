---
layout: post
title: "Teardown: (Probably fake) Griffin USB Car Charger (FAIL)"
tags: [electronics]
---

<a href="http://www.flickr.com/photos/mm0hai/8045423849/" title="Griffin
PowerJolt Dual Universal Micro by mm0hai, on Flickr"><img
src="http://farm9.staticflickr.com/8312/8045423849_f1d5c13f51_n.jpg"
width="320" height="263" alt="Griffin PowerJolt Dual Universal Micro"></a>

After my previous <a
href="/blog/2012/08/01/Message-to-an-ebay-seller.html">teardown of an MC34063
based cigarette lighter port USB power supply</a> showed it to be inadequate I
still needed a USB supply. I thought I would buy another one of these devices
but this time a branded one that cost more than one pound.

I chose what was claimed to be the Griffin PowerJolt Dual Universal Micro. It
is specified as having 2A output (1A per port). Since I wrote this article,
several people have pointed out that they think I got a fake. I suppose a good
quality one would cost more that the £2, including postage, which I paid on
ebay.

<a href="http://www.flickr.com/photos/mm0hai/8045424303/" title="Griffin
PowerJolt Dual Universal Micro by mm0hai, on Flickr"><img
src="http://farm9.staticflickr.com/8452/8045424303_38475eba6f.jpg" width="422"
height="500" alt="Griffin PowerJolt Dual Universal Micro"></a>

A bad power supply can destroy expensive equipment so this is a case where
"don't turn it on, take it apart" is very good advice.

My first impressions were the bad soldering. The joints are mottled and balled
up. Then I noticed an odd lump of solder that had been trimmed with side
cutters. This was on the end of a wire from the inductor (a toroid) and was
not secured to anything. A thin piece of solder extended to one pin of the IC,
and if the wire was pressed against the board this may have made
contact. Looking at the PCB, the solder mask goes right up to the hole for
this wire. I suspect a faulty PCB design and this is some bodge that might
make it work sometimes if it doesn't come loose.

<a href="http://www.flickr.com/photos/mm0hai/8045424471/" title="Griffin
PowerJolt - Loose wire by mm0hai, on Flickr"><img
src="http://farm9.staticflickr.com/8182/8045424471_ff68928117_o.jpg"
width="233" height="195" alt="Griffin PowerJolt - Loose wire"></a>

The IC is marked O&P 1510 2B23. I can't find it by googling. The capacitors
are tiny. I expect the filtering would be bad. There is no fuse. Griffin says
it has "SmartFuse circuit-breaker protection", so I was expecting a separate
protection device, such as a polyswitch, which is not there.

I was going to test the output voltage, current and ripple, but the thing
won't even work without me fixing it first, so I'm probably not going to
bother.

Conclusions
-----------

You need to pay more than £2 for something that is not crap. There are
imitation branded electronics on ebay.

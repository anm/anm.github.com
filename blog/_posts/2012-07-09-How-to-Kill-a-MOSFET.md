---
layout: post
title: How to kill a MOSFET
subtitle: SOA limits in switchmode type transistors
tags: [electronics]
---

I've been making a constant current load for testing power supplies and solar
panels. I've killed two MOSFETs so far and now learned something about why.

Firstly, the obvious. Voltage, (V<sub>gs</sub> and V<sub>ds</sub>) must be
within limits. The same for current, I<sub>d</sub>. There is also the power
limit given by the maximum junction temperature. I calculated this limit given
the T<sub>j (max)</sub>, the ambient temperature and the thermal resistance
from junction to case, R<sub>θjc</sub>. I then operated my circuit within
these limits and could not understand why the MOSFET was dying.

When I looked at the safe operating area (SOA) graph in the datasheet I found
values much smaller than expected from my calculations. I thought the SOA was
limited only by the maximum voltage current and temperature as calculated with
the R<sub>θjc</sub>, but it turns out there are other thermal limits.

These are particularly notable in the transistor I was using, the [IPP114N03L
G](http://www.infineon.com/dgdl/IPB114N03L_rev1.02.pdf?folderId=db3a30431a5c32f2011a809773886508&fileId=db3a30431b3e89eb011bb1511cce0734).

<img alt="IPP114N03L G" src="http://i.stack.imgur.com/2Gsr6.gif" />

Note the steep limits to the right, severely limiting current at higher
voltages. This was the region I was trying to operate in. 

I think the problem is caused be high thermal gradients causing expansion and
cracking of the die. This explains the quiet pop I heard when one failed - the
silicon cracked. The thermal resistance seems like more of an average limit -
if the whole die is at a similar temperature it applies. Temperature variation
over the die seems to be higher in FETs designed for switchmode power
supplies. They are optimised for on-off switching and can't cope with
operation in this linear region. BJTs suffer from second breakdown, which
limits the SOA. MOSFETs are not meant to do this but this seems to be a
similar limit.

Moral of the story: don't trust the headline figures. Sometimes these seem to
be made up by the marketing department. Consult the SOA and give the limits a
wide berth.

I learnt most of this from <a href="http://electronics.stackexchange.com/questions/35352/apparent-inconsistency-of-mosfet-power-rating-in-datasheet-soa-v-max-power">my
question on stackexchange</a>.
---
layout: post
title: Constant Current Load
tags: [electronics]
---

I have been designing power supplies and testing solar panels recently. An
easily and finely adjustable constant current load is very useful for these
tasks, so I made one.

<a href="http://www.flickr.com/photos/mm0hai/7690254990/" title="Constant
Current Load by mm0hai, on Flickr"><img
src="http://farm9.staticflickr.com/8287/7690254990_1f846f9bb6_z.jpg"
width="640" height="523" alt="Constant Current Load"></a>

My design is basically the same as shown in this <a
href="http://www.eevblog.com/2010/08/01/eevblog-102-diy-constant-current-dummy-load-for-power-supply-and-battery-testing/">EEVBlog
video</a>, except I run the opamp at 12V, with resistors changed
appropriately, and use a 10K pot. The 12V supply, from a 78L12, also powers a
cooling fan. I added a 2A fuse.

The heatsink and fan are taken from a CPU. I drilled and tapped the heatsink
to mount the MOSFET, and used thermal paste. It works well.

The main problem I had with this circuit was selecting a MOSFET. Initially I
used an IPP114N03L G. I chose this based on the headline V and I
specifications, and thermal calculations of power handling. I then learnt that
there are more <a
href="/blog/2012/07/09/How-to-Kill-a-MOSFET.html">restrictions on the
operating conditions of MOSFETs</a>, which are shown in the Safe Operating
Area graph. I replaced it with an STP5NK80Z. It's not ideal because of
relatively high R<sub>ds (on)</sub> but it's what I could get that would handle
the load.

The device now works well and has been used many times already. It would be
convenient if it had a current meter though.
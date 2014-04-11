---
layout: post
title: Servicing a Thinkpad x60s Fan and cooling system
tags: [electronics, thinkpad]
---

The fan in my x60s had started to sound rough. I was worried it was going to
die soon, which would be very inconvenient when cycle touring or in
mid-nowhere. I thought I should probably replace it but decided to try and fix
it first. The plan was to clean and oil the fan, and replace thermal paste.

First I had to extract the fansink, the combined fan and heatsink
assembly. This was quite a large job because it involved removing nearly every
other part of the computer. It was interesting to see inside though. It was
made easy be the excellent service manual which I downloaded. Be very careful
when unscrewing the fansink. Use a screwdriver that fits well and support the
points you will be pushing down on with something underneath the board. I
didn't and heard a nasty cracking noise. I'm surprised that the solder
connections to the CPU were not broken when the board bent, but luckily it
doesn't seem to have caused any problems.

I then had to access the fan. It was not designed to be removed from the
fansink but it was possible by bending the metal tabs which held the case over
the rotor, and peeling back some foil tape.

<a href="http://www.flickr.com/photos/mm0hai/7720829624/" title="Thinkpad x60s Fansink by mm0hai, on Flickr"><img src="http://farm9.staticflickr.com/8287/7720829624_26bd0a7aaf_z.jpg" width="640" height="480" alt="Thinkpad x60s Fansink"></a>

I cleaned out quite a lot of dust which had built up by the fan blades and in
the heatsink fins. I then applied 3 in 1 oil to the bearing surfaces.

<a href="http://www.flickr.com/photos/mm0hai/7720821532/" title="Thinkpad x60s Fansink: Fan motor, rotor removed by mm0hai, on Flickr"><img src="http://farm8.staticflickr.com/7111/7720821532_d81fbebcc6.jpg" width="500" height="375" alt="Thinkpad x60s Fansink: Fan motor, rotor removed"></a>

Replacing the heatsink requires replacing the thermal paste, and I expected
that doing this well would improve cooling in any case. It should reduce the
thermal resistance from silicon to heatsink and therefore the fan could maybe
run at a lower speed, prolonging its life. I used Arctic Silver 5 as it seems
to have the best reputation and reviews.

Arctic Silver give application instructions for various CPUs, but not for this
one. I wrote to them and they said to use, for a Core Duo in a laptop, the <a
href="http://www.arcticsilver.com/pdf/appmeth/int/ss/intel_app_method_surface_spread_v1.1.pdf">surface
spread</a> method. Before applying I thoroughly cleaned the surfaces with
isopropanol, which has proven useful for many other electronics
applications. I was excited to discover I actually had one of these mythical
"soft lint free cloths". In real life it's called a camera lens cleaner.

<a href="http://www.flickr.com/photos/mm0hai/7258837974/" title="Intel Core Duo, in Thinkpad x60s by mm0hai, on Flickr"><img src="http://farm8.staticflickr.com/7094/7258837974_5b20049508.jpg" width="500" height="375" alt="Intel Core Duo, in Thinkpad x60s"></a>

The memory controller is also cooled directly by the fansink. It has a thermal
pad instead of paste. I did not replace this because I didn't have another
one. I was careful to try and keep it clean though. Dust matters.

After reassembling the computer, it's a good idea to test it. I used <a
href="http://www.mersenne.org/freesoft/">prime95</a> to heat the CPU. It's a
mersenne prime finding program, but also seems to be popular with overclockers
who want to test cooling. It has menu options specifically for this. memtest86
can be used to test memory. I ran prime95 while monitoring temperatures with
`watch sensors`, in a linux shell.

I am pleased with the result. The fan is now quiet, but not perfect. I think
the bearing is a bit worn, but it should last for much longer than if I had
done nothing. The CPU temperature now sits around 41C idle. I recommend you
carry out this procedure at the first signs of fan wear, as the oil should
reduce further damage that would otherwise occur more quickly.

Keeping the computer cool should also extend its life. <a
href="http://en.wikipedia.org/wiki/Arrhenius_equation">The Arrhenius
equation</a> applies to component failures.

Now, I should try and avoid gunk build up in the fan by not using the
computer: in bed, in sand dunes, in caves, in a forest...
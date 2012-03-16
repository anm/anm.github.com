---
layout: post
title: My introduction to the Arduino platform
subtitle: Getting started with the Seeeduino V2.21 and Ethernet
background-colour: white
tags: [software, electronics]
---

I have been meaning to do several microcontroller based projects for some time
now. Ideally I wanted to do it without spending any money so I decided to make
myself a PIC programmer with some samples from Microchip. This would also make
the process more interesting.

The plan was to make a <a href="http://usbpicprog.org/">usbpicprog</a> and
bootstrap it with a serial port based programmer using an old computer.  I
bought all the parts, including copper clad board and ferric chloride but
never quite got round to doing it. This was in part because I was not very
keen to have to work with ferric chloride and I didn't want to dissolve the
sink.

Meanwhile, I had been hearing about the Arduino more and more. Initially I
ignored it as something for artists and people who didn't know what they were
doing. I had spent some time at university learning about and using real
microcontrollers with none of this boot loader nonsense so I did not think I
needed such things. Then I realised that being leet enough not to require
simplification did not make quicker development a bad thing. :-) I decided I
had wasted enough time and just wanted to get something done, so I bought an
Arduino.

<img src="http://farm6.static.flickr.com/5223/5773580603_eee48af87b.jpg"
width="500" height="375" alt="Seeeduino and ethernet shield">

I actually chose the seeedunio, an Arduino clone. The design is open so this
is allowed and in fact there are some improvements made in the
seeeduino. Primarily I chose it though because it was the cheapest. I still
don't like the idea of paying decapounds for a single basic microcontroller
and some soldering. I also ordered an ethernet shield, which is what an
expansion card is called in the Arduino world. These arrived yesterday.

It took me longer than I would have liked to get started, with the blinking LED
hello world of microcontrollers, because there were no instructions about the
correct settings. After some googling and trial and error I determined that I
had to set the reset switch on the board to auto and, in the Arduino IDE, set
the board type to <type>Deumilanove or Nano w/ ATmega328</type>.  After that
I very quickly had it beaconing my callsign on the board mounted LED attached
to pin 13. So far quite reasonable.

Then I decided to plug in the ethernet board and run the example programs.  I
had to stick all the source files in the same directory and change the ip
address and then I was pinging the board. It took only a few minutes. This I
thought was pretty ridiculous. Then I used the web server program. It
worked. I couldn't really believe this - this did not seem like electronics at
all. I would expect this to have taken weeks of debugging, loose wires, errors
in PCB design, software bugs and frustration but here it was working in a few
minutes with no test gear in sight. I have certainly confirmed my get things
done faster conjecture.

It was not quite as good though when I wanted to connect stuff up to it. The
board did not come with a data sheet and I could not find much at all online.
In the end I went to Atmel's web site and downloaded the datasheet for the
ATmega328P on my board. Included below are some useful figures from it.

Reference
=========

Seeeduino - Summary of Initial Setup
-----------------------------------

I am using the Seeeduino V2.21 which is also marked ARD128D2P.

It uses the ATmega328P.

This is the error I got initially:

<code>avrdude: stk500_disable(): protocol error, expect=0x14, resp=0x00</code>

The solution:

- Move reset switch to auto
- Set board type to <code>Deumilanove or Nano w/ ATmega328</code>.

ATmega328P Data
===============

Absolute Maximums
-----------------

<table>
<tr><td>Operating Temperature</td><td>-55°C to +125°C</td></tr>
<tr><td>Voltage on any Pin except RESET with respect to Ground</td> <td>-0.5V to VCC+0.5V</td></tr>
<tr><td>Maximum Operating Voltage</td><td>6.0V</td></tr>
<tr><td>DC Current per I/O Pin</td><td>40.0mA</tr>
<tr><td>DC Current VCC and GND Pins</td><td>200.0mA</td></tr>
</table>

Programming
-----------

The Arduino environment uses C but with some magic, see
<a href="http://arduino.cc/en/Hacking/BuildProcess">Arduino Build Process</a>.


Ethernet board
--------------

It's ENC28J60 based. This is not the same as the official one, which uses the
Wiznet W5100.

Bought from <a
href="http://www.ekitszone.com/Products/4-enc28j60-ethernet-shield-for-arduino.aspx">ekitszone</a>.
Looks well made and works.

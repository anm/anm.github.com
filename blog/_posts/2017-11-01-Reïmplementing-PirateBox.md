---
layout: post
title: Reïmplementing PirateBox
subtitle: A PirateBox alike, with nginx and XMPP on LEDE
tags: [piratebox, hacking, openwrt]
---

After using Piratebox for a while, I decided I could do the same thing in a
way I liked better.

The PirateBox install is rather complicated, and I still don't understand how
it is all laid out, with various disk image files, scripts in different
places, services started from a piratebox init script, or their own
scripts... Fundamentally what it is doing is pretty simple, so I decided it
would be easier just to reïmplement it myself in a simpler way. Perhaps
unusally for such a project, I was right - it was easy to do and the end
result I like much more - simpler, easier to understand. I don't want to say
anything bad about the developer of the project - he has other constraints
that may make the system he has make more sense. For example, he is supporting
several platforms including raspberry pi, and has to spend time supporting the
thing too.

To start with, I decided to upgrade to LEDE. LEDE seems to basically be the
latest version of OpenWRT. I don't know all the details or politics, but my
impression is OpenWRT has stalled and basically you should move to LEDE. There
was a version of this compiled and ready to go for my router, but later I
compiled my own anyway, because I wanted to compile a custom nginx and it was
easy enough to do the whole thing.

So, I started with a plain install of the latest LEDE. I setup an overlay
filesystem on a disk image file on a USB drive, which would also host the
PirateBox files.

Then there is basic network config to do, setup access point, etc. Fairly
standard stuff for LEDE. I did some other stuff to make the system more usable
for me, switched ssh to OpenSSH, installed bash and some other packages I
like.

First design change I made from PirateBox was to use nginx instead of lighttpd
for the main web server. It's much faster - I really noticed in the page load
time. Also, PirateBox copies header and footer files into every directory,
which is a nasty mess. Instead, I used nginx's fancy_index module, which does
this in the reasonably expected fashion - specify the header and footers to
include in the config file. I had to compile this module for mips, but it was
not hard and worked fine.

Next thing was to redirect http to the PirateBox page. You can do this just by
intercepting traffic to port 80, or with making your DNS server always return
the IP of the PirateBox whatever is asked for. Just the http redirect works
fine, and avoids messing up DNS for other purposes, so I recommend sticking
with that.

Optionally (TODO for me): Implement RFC 7710 - advertise captive portal login
page with a DHCP option.

I wanted to move away from droopy - it just feels a bit dodgy, so looked into
getting nginx to do as much as possible. There are various ways to upload
files with nginx, but it looks like I would need to do at least a bit of
scripting myself which I couldn't be bothered with at the moment, so I stuck
to Droopy for now.

I did not include the image board. This is really dodgy looking and I even
noted complaints in the PirateBox forum that it linked to porn. Not to my taste.

The original chat box never worked properly for me - it was very slow. I
decided to try and move to something based on XMPP (Jabber). Prosody was easy
to set up, and to use from normal XMPP clients. Getting a working chat box
though I've not sorted out. I tried to use converse.js, and got it working in
the end, but it was so slow as to be unusable, I decided, locking up a browser
on a laptop for long enough to be considered broken. I don't have a solution
yet. Maybe if no web XMPP client works, something based on IRC could, but
that's not so good for using on phones.

So, what I ended up with was not as feautureful as the original, but it was
faster, easier to understand and modify, and more "secure", if such a thing
can be said of a system which allows arbitrary anonymous uploads. I've not
checked exactly what or where droopy is going to allow uploads...

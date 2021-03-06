---
layout: post
title: Pirate Box
tags: [piratebox, openwrt, hacking]
---

<img width="50%" class="block-centre"
     src="/res/2017-10-30-PirateBox/PirateBox-logo.svg"
     alt="PirateBox logo" />

This year, I have been playing with a <a href="https://piratebox.cc/">Pirate
Box</a>, which I made from an old home router that I flashed with OpenWRT. I
came across this project a while ago, and eventually make one early this
year.

A Pirate Box is basically a file server with a captive portal style web
interface, and an open wifi access point. So, anyone can see the PirateBox
wifi network, connect, and when they try to browse the web they'll be
redirected to a page where they can upload and download files. Some key points
which make this system notable are that anyone can upload, there is no
authentication, and no logging. ALso, it's not connected to the internet.

It's comparable to <a href="https://deaddrops.com/">USB dead drops</a>, but
with wifi. USB dead drops are USB flash drives which are stuck in public
places, like cemented into a wall for example. There is a map of them on the
web.

I was quite excited at the idea of having a PirateBox on my ship. I imagined
running it at anchor, so that other boats and sailors could share things like
charts, local info, pilots, other less useful but entertaining things. The
Pirate box also includes chat, and this could be extended with AIS like info
maybe, so you can see who you are talking to around you.

Anyway, it didn't really work out. Noöne used it. I can't be sure it was never
used - remember there is no logging - but I didn't see any evidence of it. I
have a wifi activity LED on the box, which never did anything exciting. Noöne
uploaded anything either, or commented in the chat box. I have tried running
the box in various likely places - an alternative cafe, a hackerspace which
also has many offices and a pub within range, marinas, anchorages - but never
received any files.

What's the problem? I think there are several. When the project was conceived
some years ago, people didn't have mobile data connections. I guess people
generally are not looking for wifi as much as they used to, especially in
anchorages where they may just assume there is none, and not even try.

If they do see it, maybe some people are put off by the name. Of course, it
should attract others, so not convinced this is a big problem.

After connecting, there could be problems from various modern operating
systems interfering. Mobile phones at least, do this like marking a network as
having "No internet", opening limited captive portal login pages, etc. There
is an assumption by these systems that the only useful network is the
internet, making it harder to run an independent network, however useful it
may be.

The proliferation of HTTPS also makes things harder. Captive portals generally
rely on intercepting an HTTP connection, but as almost all sites people go to
now are encrypted, they can't make themselves known unless an HTTP site is
requested, so people will just see failed connections to google.com, etc.

There is RFC 7710, which proposes a method of advertising the captive portal
login page using a DHCP option, but I don't know if anyone is actually using
this.

Maybe it would help to name the network something like "Go to piratebox.lan".

In the end, I got bored of it, and turned it into a private file / media
server. Even this is handy on the boat, and actually it has been extended for
other functions too as a general boat router.

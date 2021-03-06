---
layout: post
title: Don't use the PGP Keyservers
tags: [crypto, pgp, software]
---

I think it's a bad idea to use the PGP keyservers, and also the web of
trust. These are different points, but related. Maybe it's a bad idea to use
PGP at all, but that is already covered <a
href="http://secushare.org/PGP">elsewhere</a>.

Problems with the keyservers:

<ol>
<li>
<h2>You can't delete keys</h2>

<p>Your name, email address, and any comment you made are permanently bound
together and published. You might not like people to know your old name if you
change it.</p>

<p>Old keys clutter the servers, and it can become hard to know which key to use.</p>
</li>

<li>
<h2>Spam / vandalism</h2>

Keyservers publish anything you send them. If someone sends them signatures on
your key, these will always be shown when people look for your key. This was
used to add an ascii goatse to a key.
</li>

<li>
<h2>Easily DOSed</h2>

Almost always, I find anyway, you won't find a web of trust path to a key you
get from the servers. If someone decided to publish lots of fake keys, you
wouldn't be able to tell the difference. You need to check with someone by
other means anyway. I guess the only reason that there has been so little
abuse of the servers is that almost noöne knows about them.
</li>

<li>
<h2>Signatures publicise relationships</h2>

This is partly a web of trust problem, and partly a matter of posting
signatures publicly, but in any case the problem is that signatures give a lot
of information about who you have met, when, and maybe even where.
</li>

<li>
<h2>Key lookups reveal your contacts</h2>

When you ask a keyserver for a key for a new contact, you tell it who you are
talking to. When you refresh your keyring, you tell a server everyone you use
pgp with. If you don't configure tls for the keyserver connection, anyone can
see what you are doing.
</li>
</ol>

What should you do then?
------------------------

I recommend attaching your key to your emails. Preferably your mail program
would then use <a
href="https://en.wikipedia.org/wiki/Trust_on_first_use">TOFU</a>, and you can
verify out of band too if you want. Keys could also be verified by downloading
from the owners website over multiple network paths, for example with
tor. There are various other possibilities.

Really though, email is the problem. We need a messaging system that is
designed to be secure from the start. Some systems currently in development
that are worth checking out are <a
href="https://pond.imperialviolet.org/">Pond</a> and <a
href="https://briarproject.org">Briar</a>.

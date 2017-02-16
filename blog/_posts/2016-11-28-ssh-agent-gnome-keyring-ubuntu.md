---
layout: post
title: ssh-agent on Ubuntu Xenial
tags: [linux, ubuntu, ssh]
---

## tl;dr

If you remove `gnome-keyring` from Ubuntu 16 (Xenial), `ssh-agent` should then
start and work properly with no further changes.

`sudo apt-get remove gnome-keyring`  
`echo gnome-keyring hold | sudo dpkg --set-selections`

The second line is to stop the package being reinstalled without you asking
for it.

## Details

When I upgraded from Ubuntu 14.04 LTS (Trusty Tahr) to Ubuntu 16.04 LTS
(Xenial Xerus), I lost any functioning ssh agent. On 14, I was using
`gnome-keyring`, but that stopped working after upgrade.

In 16, `gnome-keyring` was running, but not prompting for ssh
passphrases. `ssh-agent` was not being started at all. It looked like I could
either fix `gnome-keyring` (maybe need to enable ssh module?) or start and use
`ssh-agent` instead. It seemed `ssh-agent` was configured to run already,
however it still was not started. Maybe it's configured not to start if you use
the `gnome-keyring`?

`ssh-agent` seems to be the better choice anyway, for various reasons,
including that `gnome-keyring` does not support ed25519 keys.

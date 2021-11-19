---
layout: post
title: "virtualbox and ssh"
tags: 
categories: 
---

After some troubleshooting, I finally solved a problem.  Perhaps another time I will document this more fully.  For now, I wanted to give a quick summary of the problem and how it was solved.

A separate machine is running a Puppy Linux and this system is running VirtualBox.  VirtualBox is running with a guest environment running Ubuntu Studio.  (this makes Puppy Linux the host environment)

Both Linux systems have been configured with ssh servers (sshd) running on different ports.

When connecting from another computer, I use the same IP address for both ssh servers, but different port numbers.

I wanted to connect to the Puppy Linux host from the Ubuntu Studio guest, but this gave me trouble.

Using the local LAN IP address, I was able to communicate with the host system's sshd.  However a connection could not be established and authentication was indicated by debugging.

However, after a lot of trial and error with configuration and authentication, the problem was solved by using a different IP address.   Instead of using the local LAN's IP address ( `192.168.x.x` ),  I used the IP address assigned by VirtualBox: `10.0.2.2`

I was able to get this information from the guest system, but in my research it seems as though this IP address is fairly standard for VirtualBox, so other configurations can probably use the same IP address.

Simply replacing the IP address in the ssh connection solved the problem.
---
layout: post
title: 'NHK scrape: development environment and tools'
tags: nhk scrape project env
categories: 
---

By explicitly spelling out how I will approaching this scraping project, I hope that it may answer some simple questions and allow other questions to be raised early.

## platform

For a project like this, I like to work in the **Bash** shell of Linux with a handful of tools.

* `curl`   
This utility will download-from or upload-to a web server.  For custom or complicated interactions with a server, this utility is superior.
* `wget`   
This is yet another utility for downloading from a web server.  When downloading many files, this utility has options for "globbing" to retrieve many files without requiring a Bash script.
* `xsltproc`   
This utility performs **XSLT** transformations.
Given input of a XML data file and an XSLT stylesheet, this utility generates an output document of any type specified in the stylesheet.
* `xmllint`   
This utility will "clean up" XML and HTML files, but it can also be used to extract data using an **XPath** query.   
When it is not necessary to "transform" the data for output, this is a much faster way to perform an extraction "as-is". It's really useful for debugging XPath queries.

## environment

Although I'm using a Linux machine for development, I prefer to work in a container hosted on **Replit**.

By using a Replit container, I can avoid the old *"it works on my machine, but not on yours"* sort of problem that raises its ugly head again and again when sharing software.

I can also embed a simple web interface to the container into a website -- and I intend to do this soon in a future blog post.

### multiplayer?

Replit also has a **multiplayer** feature that allows multiple people to cooperatively use the same container.

While I do love this feature for real-time sharing (such as during a call), I don't think it works when devs are working independently.

Luckily, Replit makes it a breeze to **fork** a container.  You'll get your own version to work in.  I think this is the best way for devs to work independently.


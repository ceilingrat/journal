---
layout: post
title: '"Better-Tutorial" final setup of main branch'
tags: project Better-Tutorial
categories: 
---

Here's where we stand now:

* [x] install **reveal.js**
* [x] modify `README.md`
* [x] create `better-tutorial` chat on **Gitter.im**
* [ ] commit changes to `main` branch
* [ ] configure GitHub Pages

The **README** is short, but gives enough details for anyone who wants to get involved.

Considering that I expect a lot of changes soon, I think that's the best information I can include.  Too much "stateful" information gets stale quickly, and short is better.

I will commit all the files that I've edited in my **repl**, then go over to GitHub and turn on GitHub Pages.  Hopefully the hosting will work as intended.

This has been an eventful installation, but I think I can fix it.

1. Pages won't take me to `index.html` automatically by using the trailing backslash.  I need to add `index.html` into the URL.  OK.  This has been fixed and committed already.

2. The URL scheme is different enough between my test Jekyll environment and GitHub Pages to break URLs in `auto-animate.html`.  OK.  That's my fault.  I can fix that next.

With those two changes, the docs on GitHub Pages are now working.  Unfortunate that I must commit to the repo to make changes, because my commit history gets bloated, but so be it.

After I review this some more, if I'm happy with everything then I'll branch the repo before beginning any more development.
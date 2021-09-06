---
layout: post
title: "Git Good: list of targets"
tags: project Git-Good
categories: 
---

To help identify *tasks*, I'm making a list of *targets*: individual items that make up the final product of the **Git Good** presentation event.

This is a brainstorming session.  
To track progress, this information should be exported from this post to some kind of task-tracking resource.

---

* Online event
  * Teleconference Online Meeting
    * broadcast
      * audio / video
        * *platform: Jitsi Meet*
      * slideshow
        * *platforms: GitHub Pages w/ Reveal.js*
        * code snippets
          * static
          * dynamic
            * *platform: asciinema*
        * illustrations & drawing
          * *platform: Excalidraw*
    * interactive
      * dev environments
        * shared
        * individual 
        * *platform: Repl.it*
      * GitHub repository
        * used during event
          * docs for collaboration exercises
            * *platform: md ??*
        * used after event
          * git documentation
            * *what format?*
            * *include asciicasts?*
          * copy of presentation
            * slides view
            * doc view
        * additional resources
          * utilities for Repl.it
            * *platforms: bash scripts, config files* 
  * Live-stream video 
    * real-time broadcast
    * on-demand playback later
    * *platform: YouTube*
      * *channel: ??*

---

This is very thorough, especially for illustrating the relationships, but can I summarize this into something more simple?


* **event web app**   
*custom page containing iframes*  
*hosted on GitHub Pages*
  * **dev frame**  
  *tabbed subframes, not visible together*
    * **shared dev environment**  
    *multiplayer repl*  
    *hosted on Repl.it*
    * **individual dev environment**  
    *individual repl*  
    *hosted on Repl.it*
  * **presentation frame**  
  *tiled subframes, visible together*
    * **slides**  
    *layout via Reveal.js*  
    *hosted on GitHub Pages*
    * **a/v conference call**  
    *hosted by Jitsi Meet*

Above, **slides** can contain various embedded elements:
* drawings  
*hosted by Excalidraw*
* asciicasts  
*hosted by asciinema.org*

To make use of GitHub Pages hosting, there needs to be some planning that goes into how repositories are used.

* **development repo**  
*where I'm presently doing development*  
*belongs to my GitHub user **ceilingrat***  
* **public repo**  
*after development, push to public repo*  
*probably use a different account, possibly the **dnrtc** org account*
  * **`main` branch**  
  *minimal resources required for users*  
  *no GH Pages*
  * **`pages` branch**  
  *everything for hosting presentation*  
  *GH Pages*
* **cloned repo**  
*use this for the multiplayer repl*  
*should be exactly what any user gets if they clone the `main` branch of the public repo*

In order to accomplish what I've outlined above:  
The path from **public repo** to **cloned repo** is very straight-forward.  
But presently the path from my **development repo** to **public repo** is murky and requires some attention.

Presently in the **development repo** I have two branches, `main` and `dev`.  
`dev` is getting all the attention and has GitHub Pages.  
`main` is mostly untouched.

I will need to do a sort of *mitosis* to split between `dev` and `main`.  
Development will happen in `dev`, but `main` will not contain anything related to GitHub Pages; just the resources that will be used by attendees & users.

The sooner I can find a place to put the **public repo**, the better.
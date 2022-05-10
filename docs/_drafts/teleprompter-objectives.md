---
layout: post
title: 'teleprompter objectives'
tags: project teleprompter introduction sample slides revealjs
categories: 
---

Much progress has been made on this project before I began journaling it.  However, the progress won't make any sense to the reader unless I establish what I'm setting out to do and why.

Let's establish that introduction now.

## Why a Teleprompter

I have been given an assignment to create 36 video lessons.

Whenever I film video lessons, I always use a teleprompter.  I usually make use of **Google Slides**.

Because this assignment uses a completely different format than my usual assignments, it is a perfect opportunity to use new technology for my new slides.

### Why I don't like **Google Slides**

* **Overhead**  
Everything from editing to playing back the slides requires a lot of resources. It can be sluggish or buggy or make my old hardware overheat.

* **WYSIWYG**  
Without resorting to some pretty gnarly hacking, the ability to automate editing is severely limited.  I make use of search-and-replace features of the editor, but it still requires me to do a lot more manual labor than I think I ought to be doing.

* **Appearance limitations**   
As I introduce the alternative, I will also introduce some new features that are really nice to have.

### The Alternative:  **Reveal.js**

While not perfect, **Reveal.js** is incredibly powerful and versatile.  Let's look at some examples of what I gain by moving to Reveal.js.

* **Fragments**   
I really like the **fragments** feature of Reveal.js: instead of advancing to a new slide, I can re-style the current slide.  It allows me to show several lines on a slide, but increment between which slide receives "highlighted" styling.  This allows me to look ahead while also tracking my current position, a lot like how a karaoke teleprompter works.

* **Remote control**   
Although I do have a remote control app for my Google Slides, this remote control is superior in nearly every way.  It is less buggy, quicker and easier to open, and the gestures are way way better:  I can just swipe instead of clicking buttons.  
*(Have you tried clicking buttons on a smartphone without looking? So much harder than swiping without looking.)*

* **Better performance**

* **Extensible and customizable**

* **Automation friendlier**

I think you get the idea.

## New Teleprompter slides

So that's a lot of hype.  Can the updated slides live up to the hype?

Well, you tell me.  I made some sample slides for the first lesson.

### Sample slides

<iframe style="width: 100%; height: 65vh;" src="https://slides-if.ceilingrat.repl.co/neo/1/slides.html"></iframe>

Pretty snappy!  And I love the fragments.

### Remote demo

But wait, there's more!   
Open this URL on your phone:   
[`https://slides-if.ceilingrat.repl.co/neo/1/master.html`](https://slides-if.ceilingrat.repl.co/neo/1/master.html)

Swipe left or right to advance through the slides.

## What's next?

At this point, either you're sold or your not, and no additional hype will make a difference.  So I'll give it a rest and focus on what work needs to be done to streamline the process.

### Obtain "data" for slides

Lessons are provided in **PDF** format.  I intend to extract content from these docs and then feed this content data into a template that generates a slideshow.

### Build process

It tends to get overlooked, but there will be a process to transforming content-data into a website hosting the lesson slideshows.

## Next time

In the next post, I'll begin detailing what work I've already completed.  Not only the slides I created manually, but progress I've made in obtaining and extracting content-data.
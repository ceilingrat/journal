---
layout: post
title: '"Better-Tutorial": Socket.io sample'
tags: project Better-Tutorial
categories: 
---

Now I want to play with putting code from an actual tutorial into **reveal.js**.

I will work with this tutorial:

https://socket.io/get-started/chat/

I'll copy `test-1.html` to do my work in `test-2.html`.

It seems to work *okay* but the first issue I'm seeing is the size of the code block.

To deal with this, I'm experimenting with the `stretch` class [documented here](https://github.com/hakimel/reveal.js/blob/72b05a3245479dd46ed10bdb81437f8eb01f23c1/README.md#stretching-elements).  It seems ok for one slide, so I'm going to manually add it to all the slides and test it again.

After more experimenting, I've decided to remove the `stretch` class.  When additional text is added to the slide, the auto-animation becomes broken.  Removing this class restores the desired behavior.

By making use of line-highlighting, the limited height of the code block becomes more manageable and in general the whole presentation is easier to digest.

Earlier I opted to use individual transitions for highlighting and insertion, but now I'm using one unified transition.  It seems fine.  I'll probably leave it like this for simplicity.

Later I'm going to need to spend more time talking about the original tutorial and how it differs from the sample presentation I just created.
---
layout: post
title: '"Better-Tutorial": start of development'
tags: project Better-Tutorial
categories: 
---

The `dev` branch has been created, so I'm getting started.

First, I've created `test-1.html` in `docs` and now I'm looking at `auto-animate.html` to extract the minimum amount of code necessary to produce some slides with a sample of source code.

After one small hiccup, I got the simplified slides working.

The code isn't always concise, but it is really easy to follow.  My error above was pretty stupid and avoidable.  I can't say the task was difficult.

Next I want to try to add some functionality of highlighting sections of code.  I want to highlight the parts that are added.

https://revealjs.com/code/#line-numbers-%26-highlights

It appears that I want to make use of the `data-line-numbers` attribute.  This attribute currently appears without any string value.

So now let's add some line numbers and see if this breaks!

My experiment didn't break it, but it didn't look terribly smooth.  The motion was a lot smoother than the highlighting.

So I experimented with doing the insertion and the highlighting separately.  By using an appropriate value in the `data-line-numbers` attribute, I can get this effect:

1. slide 1
2. transition to slide 2   
with animated insertion of lines,   
all lines highlighted
3. transition to "fragment" of slide 2,    
selected lines highlighted,    
other lines darkened
4. transition to "fragment" of slide 2,    
all lines highlighted
5. transition to slide 3 ...

I might experiment further, but I think this pace of transitions works well.

I'm planning to leave this file, `test-1`, for posterity and copy it to a new file.  Then I want to experiment with importing some sample code from an online tutorial.

I'll document this further in the next post.

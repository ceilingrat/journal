---
layout: post
title: '"Better-Tutorial" config continues'
tags: project Better-Tutorial
categories: 
---

Here's how it's going:

* [x] repo created
* [x] repl created

This was super easy using this URL:   
`http://replit.com/github/ceilingrat/better-tutorial`

or more generally:   
`http://replit.com/github/username/repo-name`  

* [x] add & modify `.replit`
* [x] add `run.sh`
* [x] modify `run.sh`

Replit gives me a quick UI wizard to create the `.replit` file, so that's easy.

For `run.sh`, I'm simply copying and pasting the contents of the `run.sh` file from `journal` because the repl is already open.

Next time, I should import the file by other means.

* [x] modify `.gitignore`

Same as above for `run.sh`

* [x] add `docs` directory

Easy peasy.

``` bash
mkdir docs
```

* [x] install `github-pages` gem

``` bash
upm -l ruby add github-pages
```

* [x] add / modify `docs/index.html`

I forgot to mention this earlier, but I should drop an index file into my `docs` directory just so that I can smoke-test Jekyll.

So for the smoke-test...

![Jekyll test](/images/post-img-jekyll-success-1.png)

Great!!

A few more steps remain:

* [ ] install **reveal.js**
* [ ] modify `README.md`
* [ ] configure GitHub Pages
---
layout: post
title: '"Better-Tutorial": installing reveal.js'
tags: project Better-Tutorial
categories: 
---

Just a few steps remain in the initial configuration:

* [ ] install **reveal.js**
* [ ] modify `README.md`
* [ ] configure GitHub Pages

I've just tested out **Jekyll** and its working.

There's presently no theme and for now I'm going to stick with no theme for simplicity.

I'm going to do the **Basic Setup** method described at [the Reveal.js site](https://revealjs.com/installation/#basic-setup).

``` bash
mkdir docs/lib
wget "https://github.com/hakimel/reveal.js/archive/master.zip"
```

Upon peeking into the zip archive, I don't think I want the full contents.   So I'll download the file, browse it, extract what I want, then delete the archive.

There are a lot of files in the archive to sort through, but I see a method to make this easier.  There is a test file for the **auto-animate** feature:   
`reveal.js-master/test/test-auto-animate.html`

I can extract just this file to my `docs` directory so that Jekyll will host it.

Of course it won't work by itself, but I can look at the source to see which files it depends on.  I can add files to `docs` until it works.

``` bash
unzip -l master.zip | grep "auto-animate" | sed -r -e "s/([^ ]+) {2,}/\1\t/g" | cut -f 3 | xargs -p unzip master.zip
find reveal.js-master/ -type f | xargs -p cp -t docs
```

(I wish that were one line instead of two, but I haven't found out how to extract from a zip without retaining the full directory path)

``` bash
unzip -l master.zip | grep -P "dist/reveal\.\w{2,3}$" | sed -r -e "s/([^ ]+) {2,}/\1\t/g" | cut -f 3 | xargs -p unzip master.zip
unzip -l master.zip | grep "highlight" | sed -r -e "s/([^ ]+) {2,}/\1\t/g" | cut -f 3 | xargs -p unzip master.zip 
mkdir docs/lib/revealjs
cp -r reveal.js-master/dist reveal.js-master/plugin/ docs/lib/revealjs/
unzip master.zip reveal.js-master/dist/theme/black.css
cp -r reveal.js-master/dist/theme/ docs/lib/revealjs/dist/
```

I've been working with `auto-animate.html` and not `test-auto-animate.html` because the latter appears to require a test harness hosted with **node.js**.  That's just too much setup for what I need.  The other file will be fine.

So in the GUI editor of **replit**, I opened `auto-animate.html` and searched for instances of `../` and replaced them (5 total) with `/lib/revealjs/`

I tried it out and the demo works!   
However there is an image missing.  I will restore it and check it all again to see if anything is missing.

``` bash
unzip -l master.zip | grep "image1.png" | awk '{ print $4 }' | xargs -p unzip master.zip
cp -r reveal.js-master/examples/assets docs/lib/revealjs/
```

I'm glad I added the image!

1. I found that `awk` is much easier than using `sed` and `cut` together because `awk` is just smarter about interpreting whitespace.
2. I can see that the image size changes smoothly in the demo.  Nice effect.

I've deleted `test-auto-animate.html` from the `docs` directory to clean things up.

Perhaps I'm going to add the source files to the `.gitignore` (the zip and the extracted files)

After updating the `.gitignore` file and running `git status`, it looks good.  So I will update the `README.md` and then commit the changes back to the repository.


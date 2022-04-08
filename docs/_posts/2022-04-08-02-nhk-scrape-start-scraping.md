---
layout: post
title: "NHK scrape: let's start scraping"
tags: nhk scrape project
categories: 
---

## Let's get started!

I began by looking at the URLs of the two samples from earlier.

* https://www3.nhk.or.jp/news/easy/k10013568931000/k10013568931000.html
* https://www3.nhk.or.jp/news/html/20220406/k10013568931000.html

They share a similar root path:
```
https://www3.nhk.or.jp/news
```

In my container, I'd like to create a directory called `news` to contain files that I scrape.

It took a little work, but I was able to accomplish what I wanted.

``` bash
echo "paste a URL to request:"
read -p ">  " URL

partialURL=$(echo $URL | grep -o -e "news/.*$" | xargs printf "%s")

curl --create-dirs -o $partialURL -L $URL
```

As far as I can tell, `curl` always discards the local paths of files and only returns a filename.

Because I care about the relative paths, I had to accomplish that in Bash.

Thankfully, `curl` still does some of the work if I give it a path to where to store the file;  using the `--create-dirs` parameter, it will only create new directories in the filesystem when they don't exist.  And when `curl` finds the directories exist, it uses them.

Now I can paste any URL for the news website and `curl` will fetch it and store it in my filesystem.

You can even do it from the embeded Replit container!

<iframe src="https://replit.com/@ceilingrat/news-scrape?embed=true#run.sh" style="width: 100%; height:65vh;"></iframe>
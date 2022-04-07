---
layout: post
title: 'NHK scrape: requirements and samples'
tags: nhk scrape project req sample
categories: 
---
<style>
  iframe {
    width: 100%;
    height: 60vh;
  }  
</style>

The purpose of the scrape is to collect two separate documents that correspond to a single news story.  One document is written in basic Japanese, the other document is written in greater detail.

For simplicity, from here on forward I will call these **easy** and **hard** versions.

## page samples

### Easy

URL: https://www3.nhk.or.jp/news/easy/k10013568931000/k10013568931000.html

<iframe src="https://www3.nhk.or.jp/news/easy/k10013568931000/k10013568931000.html"></iframe>

### Hard

URL: https://www3.nhk.or.jp/news/html/20220406/k10013568931000.html

<iframe src="https://www3.nhk.or.jp/news/html/20220406/k10013568931000.html" width="100%"></iframe>

## requirements

Not all of the requirements have been defined so far (and this is a note to follow-up on those undetermined requirements) but I'll start with what I know:

- [ ] collect an **easy** page
- [ ] collect the related **hard** page (using URL found in **easy** page)
- [ ] filter & parse each page into structured data
- [ ] export structured data into a serialized format (such as *JSON* or *XML*)

## next

Next, I'll introduce the environment that I'll use.

---
layout: post
title: "NHK scrape: crawling'
tags: nhk scrape project crawling xpath
categories: 
---

The next thing to do is to start thinking about **crawling**.

Given a URL to an **easy** page, it is possible to extract the URL for the corresponding **hard** page.

The easiest way to do this is with an **XPath query**, and the easiest way to experiment with our XPath query in Bash is using `xmllint`.

First, let's look at the source code of the easy page:

``` html
...
            <nav class="article-main__links">
              <div class="share">
                <div class="nhk-snsbtn" data-nhksns-disable="google" data-nhksns-description=" "></div>
              </div>
              <div class="link-to-normal" id="js-regular-news-wrapper">
                <a href="https://www3.nhk.or.jp/news/html/20220405/k10013567751000.html" class="btn" target="_blank" id="js-regular-news"><ruby>普通<rt>ふつう</rt></ruby>のニュースを<ruby>読<rt>よ</rt></ruby>む</a>
              </div>
            </nav>
...
```

It shouldn't be surprising that the URL we want is in the `href` attribute of an `a` element.

I believe the best way to grab this element is using the following XPath query:

```
//a[contains(@id,'regular-news')]
```

This will return the full element.   
If we want just the `href` attribute, let's try the following:

```
//a[contains(@id,'regular-news')]/@href

```

I've created a simple script, `crawl.sh`, that demonstrates searching an **easy** news page using a user-supplied XPath query.

```bash
#!/bin/bash

file=news/easy/k10013567751000/k10013567751000.html

printf "Searching: %s\n" $file
echo "Enter an XPath query:"
echo "(use single quotes instead of double quotes)"
read -p ">  " xpquery
echo
xmllint --html --xpath "$xpquery" $file 2>/dev/null
echo
```

If `xmllint` is used to extract the URL, then a small amount of text manipulation will be needed to strip some extra unnecessary characters from the output.

Alternatively, an XSLT stylesheet could be used for both the XPath query and the string formatting of the output, replacing the need for `xmllint`.
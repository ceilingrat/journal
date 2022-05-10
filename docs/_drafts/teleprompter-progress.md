---
layout: post
title: 'teleprompter progress'
tags: project teleprompter pdf xml data extract bash xpath
categories: 
---

As mentioned earlier, I made some progress on this project prior to journaling it.  Now I'll document has happened so far.

## First Slides (manually)

### hack.md

### export from hack.md to self-hosted server

( markdown plugin )

### adding remote-control feature

( mention RunKit )

## Get Content from PDFs

### Obtain PDFs using `wget`

```bash
urlpre="https://host.com/path"
wget \
 --directory-prefix="$HOME/slides-IF/source" \
 --wait=120 \
 --random-wait \
 --verbose \
${urlpre}/lesson{1..36}.pdf
```

### Convert PDF to XML

#### Poppler & `pdftohtml`

( issues with CJK Unicode in Repl.it, performed the conversion on a local Linux machine )

```bash
find . -iname *.pdf \
| sed -e "s/\.pdf//" \
| xargs -I{} pdftohtml -xml {}.pdf  {}.xml
```

### Extract content from XML documents

( examine source code and write xpath queries )   
( run xpath queries against all docs and measure results )

```
   == xpath tests ==

Part 1: Chunks
3: //text[contains(.,'チャンク読みの訳')]/preceding-sibling::text[b][1]/following-sibling::text[following-sibling::text='チャンク読みの訳']

Part 2: Tips
1: //text[preceding-sibling::text='語注' and following-sibling::text='自己評価表']


Results

                xpath query (# found)
 file     1           2          3
   1  chunks: 8    tips: 23    pages: 2   
   2  chunks: 11   tips: 22    pages: 2   
   3  chunks: 15   tips: 26    pages: 2   
   4  chunks: 9    tips: 11    pages: 2   
   5  chunks: 13   tips: 6     pages: 2   
   6  chunks: 14   tips: 19    pages: 2   
   7  chunks: 11   tips: 24    pages: 2   
   8  chunks: 14   tips: 16    pages: 2   
   9  chunks: 14   tips: 27    pages: 2   
  10  chunks: 13   tips: 20    pages: 2   
  11  chunks: 23   tips: 27    pages: 2   
  12  chunks: 13   tips: 13    pages: 2   
  13  chunks: 18   tips: 9     pages: 2   
  14  chunks: 15   tips: 23    pages: 2   
  15  chunks: 18   tips: 29    pages: 2   
  16  chunks: 10   tips: 18    pages: 2   
  17  chunks: 10   tips: 16    pages: 2   
  18  chunks: 16   tips: 35    pages: 2   
  19  chunks: 14   tips: 24    pages: 2   
  20  chunks: 16   tips: 21    pages: 2   
  21  chunks: 15   tips: 21    pages: 2   
  22  chunks: 18   tips: 0     pages: 2   
  23  chunks: 16   tips: 0     pages: 2   
  24  chunks: 15   tips: 11    pages: 2   
  25  chunks: 21   tips: 0     pages: 2   
  26  chunks: 18   tips: 14    pages: 2   
  27  chunks: 1    tips: 0     pages: 4   
  28  chunks: 1    tips: 0     pages: 4   
  29  chunks: 0    tips: 0     pages: 4   
  30  chunks: 0    tips: 0     pages: 4   
  31  chunks: 0    tips: 0     pages: 4   
  32  chunks: 0    tips: 0     pages: 6   
  33  chunks: 0    tips: 0     pages: 6   
  34  chunks: 0    tips: 0     pages: 6   
  35  chunks: 0    tips: 0     pages: 7   
  36  chunks: 0    tips: 0     pages: 10  
  ```

## Next Steps

* [ ] write XSLT stylesheet to extract content data from the first **20 docs**.
* [ ] examine the remaining **16 docs** and write new XPath queries as necessary 
( pay attention to amount of pages )
* [ ] make template to transform content data into HTML slides
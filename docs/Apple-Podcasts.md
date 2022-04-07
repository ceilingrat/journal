---
layout: default
---

<h2>name: {{ page.name }}</h2>
<h2>id: {{ page.id }}</h2>
<h2>url: {{ page.url }}</h2>
<h2>slug: {{ page.slug }}</h2>

<ul>{% for post in site.tags["Apple-Podcasts"] %}

<li><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>

{% endfor %}</ul>
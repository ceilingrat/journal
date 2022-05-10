---
layout: default
---
{% capture key -%}
{{ page.name | remove: ".md" }}
{%- endcapture %}


<h2>posts for <code>{{ key }}</code></h2>

<ul>{% for post in site.tags[key] %}

<li><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>

{% endfor %}</ul>

XML/Atom feed available here:
[{{ key }}.xml](../feed/{{ key }}.xml)
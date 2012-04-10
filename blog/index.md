---
layout: default
---

<h1>Bloviations from the Phrontistery</h1>

All blov posts on this site.

<ul class="posts">
{% for post in site.posts %}
  <li><span>{{ post.date | date_to_string }}</span>
   &raquo; <a href="{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}
</ul>

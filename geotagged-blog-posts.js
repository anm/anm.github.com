---
---
var geotagged_posts = [
{% for post in site.posts %}{% if post.location %}{  latlon: "{{post.location}}", title: "{{post.title}}", url: "{{post.url}}"},
{% endif %}{% endfor %}
];
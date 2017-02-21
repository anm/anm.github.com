---
---
var geotagged_posts = [
{% for post in site.posts %}{% if post.location %}{  latlon: "{{post.location}}", title: "{{post.title | replace:'"','\"'}}", url: "{{post.url}}"},
{% endif %}{% endfor %}
];

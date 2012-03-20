tags:
	rm -rf blog/tag
	jekyll
	cp -r _site/blog/tag blog/

	git reset
	git add blog/tag
	git ci -m "Automatic tag page generation."

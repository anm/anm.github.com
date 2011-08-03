---
layout: post
title: I accidentally the MongoDB
subtitle: How I found myself using MongoDB without even deciding to.
---

I read <a href="http://news.ycombinator.com/">hacker news</a> frequently and
was generally aware of NoSQL databases. I had a feeling I should learn at
least one of them but did not have a real plan to do so yet. Partly, this was
because I hadn't decided which one would be the best investment of time.

<img class="float-left rounded"
src="http://farm7.static.flickr.com/6023/5955214301_56dfd34107_m.jpg"
width="200" height="195" alt="MongoDB Mug"> Then, one day, I found myself in
the middle of a MongoDB tutorial and using a live database. What? How did that
happen? I had <a
href="http://knowyourmeme.com/memes/i-accidentally">accidentally</a> the
MongoDB. I note I also have a MongoDB mug - I don't even know exactly where it
came from.

This got me thinking about the marketing of open source products and how in
this case it had been done so successfully. Looking back, there are many
things people had done to get me to this point.

First, MongoDB showed up often on hacker news. In particular, this <a
href="http://www.mongly.com/tutorial/index">interactive tutorial</a>
appeared. I thought it looked interesting and clicked it despite not really
planning to do a tutorial at this stage. Instead of instructions to download
and install packages, run commands and copy code in a webpage, I was presented
with an initially rather bare screen. Within a few seconds though instructions
started to appear. I was told "It's easy, just enter
<code>db.getCollectionNames();</code>" How could I not do something so simple?

From there, the tutorial progressed, building up to more interesting tasks,
each slightly more complicated than the last. This method of using small
prompts avoids overwhelming the user and draws one in. After doing one or two,
I kept going to see what interesting feature I would discover next. There were
puzzles to solve and immediate feedback.

Where did this tutorial come from? Well it was made by <a
href="http://openmymind.net/about">Karl Seguin</a>. Why? I don't know but
presumably he enjoyed using it and could see that Mongo was something people
were interested in learning. He may well have thought that because of hacker
news activity. Maybe he wanted to get a job.

That's an important reason why someone may want to learn a technology - to get
a job at a company that uses it. If the sort of companies that hackers like
(startups doing something exciting) are using your software then hackers will
be more likely to be interested in it and promote it for you in things like
their blog posts. The moral would seem to be solve problems cool companies
have. This is related to Paul Graham's <a
href="http://ycombinator.com/ideas.html">Startup Ideas We'd Like to Fund</a>
"30. Startups for startups".

So why does Mongo show up so much on hacker news to start with? I suspect it
is largely because it is a good product. It is the sort of thing hackers enjoy
using. It is probably also something to do with <a
href="http://www.10gen.com/team">the 10gen team</a> making an effort not just
to develop it but to promote it. Note how many people have the words
"marketing" or "community" in their blurb. Compare Couchbase, which only lists
leadership and technical teams. Marketing is mentioned only once on the
leadership page.

Compare the <a href="http://couchdb.apache.org/">CouchDB</a> and <a
href="http://www.mongodb.org/">MongoDB</a> websites.  Couch has fairly dense
text (although I do like the architecture diagram up front) whereas Mongo is
rather prettier. Also note the "Try it out" button at the top of the Mongo
page, leading to a shell.

Compare also the websites of <a href="http://www.couchbase.com/">Couchbase</a>
and <a href="http://www.10gen.com/">10gen</a>, companies which support Couch
and Mongo respectively. 10gen has "Download" and "Learn" buttons. Couchbase
has, ironically, only marketing speak.

So what have I learnt from this? Make your product hacker friendly. If people
like it they will promote it for you. Make it ridiculously easy to start
learning it. Let people know what it does quickly, with a well designed
website.

As for the mug, it must have come from a conference someone in the office went
to. I would like to think this would not change my opinion on what makes a
good database but we know it does.
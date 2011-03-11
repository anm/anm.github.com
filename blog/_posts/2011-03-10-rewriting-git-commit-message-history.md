---
layout: post
title: Rewriting git commit message history across multiple branches
---

The usual way to modify a previous git commit is to rebase interactively:

<pre><code class="block">git rebase -i &lt;parent of oldest commit to edit&gt;</code></pre>

This lets you modify the past commit and then it reapplies all commits
in the current branch since then on top of the modified commit.

This is all you need if you only have one branch. This time, however,
I had multiple branches splitting off after the commit I had to
change. When I used the rebase technique, the other branches remained
along with the unmodified commit they were based on.

I decided to try a different approach - I used <code>filter-branch</code>.

`filter-branch` is very powerful and has many options. In this case, I
only wanted to rewrite a commit message, so I used the
<code>--msg-filter</code> option. This pipes each message to a shell
command and replaces it with the output of that command - perfect in
conjunction with sed. This method, unlike rebasing onto a single
edited commit, lets you programmatically edit all commit messages

One of the things I wanted to do was remove the comments that had been
added by git-svn. This command did the trick:

<code class="block">git filter-branch -f --msg-filter 'sed s/git-svn.*$//g' -- --all</code>

Before this operation, git makes a backup, referred to as the
original. If there is already a backup git will, be default, refuse to
run the command, as doing so would overwrite the existing backup with
a new one. Use `-f` to force it.

`-- --all` applies the filter to all branches. Alternatively, single
branch names can be given.

The above commands have taken care of modifying our commits but they
have not removed the originals, which have been kept as backups. To
purge these from the repository, you need to remove all references to
them and then run the garbage collector.

Edit these files to remove any of these references:
<pre class="block">
<code class="block">
.git/info/refs
.git/packed-refs
</code>
</pre>

And do this:
<pre class="block">
<code class="block">
rm -rf .git/refs/original
rm -rf .git/logs/
</code>
</pre>

Now garbage collect:
<pre class="block">
<code class="block">
git gc prune=now
</code>
</pre>

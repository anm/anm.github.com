---
layout: post
title: List Comprehensions in Haskell
---

Why they're so good
-------------------

I like list comprehensions. They are concise. Until recently though, I did not
know why. Reading <a
href="http://www.cs.kent.ac.uk/people/staff/sjt/craft2e">Thompson</a>, I
realised it is because they combine three fundamental patterns of functional
programming with little syntax. The patterns are generate, filter, and map.

The generation stage produces one or more lists, often using something like
`[1..]`, the list of the natural numbers.  Filters are specified as comma
separated boolean expressions.  The map operation is defined before the `|`.
There is some more detail in the <a
href="http://haskell.org/onlinereport/exps.html#list-comprehensions">Haskell
Report</a>.

They're not set builder
-----------------------

It's tempting to think of list comprehensions as set builder notation, which
clearly they are meant to resemble. The problem is they are not and thinking
of them this way can lead to problems when it is time to evaluate them.

Obviously, they are lists, not sets. This will restrict how they are evaluated
- order matters. It's also unhelpful if you really do want a set but the way
you write the list comprehension generates some values more than once.

How you write them matters
--------------------------

Pure functions are (<a
href="http://en.wikipedia.org/wiki/Extensionality">extensionally</a>) equal if
the outputs are the same for all inputs. When there are several ways to write
the same function, a perfect compiler would know the most efficient way to
calculate each result. Unfortunately, it seems that GHC is not perfect and there
are in practice dramatic differences in execution time depending on how
functions are written.

For example, when solving Project Euler problem 9, I wrote something a bit
like this:

<pre><code>
slow n = [ (a, b, c) | a <- [1..n], b <- [1..n], c <- [1..n], 
          (a + b + c) == n ]
</code></pre>
Which is equal to this in result:
<pre><code>
fast n = [ (a, b, c) | a <- [1..n], b <- [1..n], let c = n - (a + b), 
          (a + b + c) == n ]
</code></pre>

but not in execution time. For n = 1000, fast took less than a second and slow
did not complete within minutes.

I would guess GHC is using nested loops, so slow will have time complexity
`O(n^3)` and fast `O(n^2)`.

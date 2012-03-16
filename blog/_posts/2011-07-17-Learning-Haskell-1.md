---
layout: post
title: Learning Haskell - Part 1
tags: [software, haskell]
---

I'm learning Haskell at the moment, and have been doing so slowly over the
past couple of months.

I know many languages to some extent but have never really practiced
functional programming seriously. I am familiar with some of the concepts,
which I have picked up from languages with functional aspects, such as perl
(see <a href="http://hop.perl.plover.com">Higher Order Perl</a>) and
javascript, from speaking to a more knowledgeable friend and of course from
wikipedia. I also started to learn common lisp a few years ago and got as far
as reading most of a book before having to do something else. (University
work. It was quite good at getting in the way of me learning things.)

I decided to have another go at learning functional programming properly. It
is an important programming style which I do not fully understand and I think
it is important that I should. I do not like not knowing things and I feel
stupid when talking to people who know more about programming languages.

I think Haskell is probably the best choice as a language to learn functional
programming because, unlike lisp, it does its best to be <a
href="http://en.wikipedia.org/wiki/Purely_functional">purely functional</a>,
that is functions have no side effects. This should force me to do things
properly. It seems to be becoming quite popular so there is a chance people
may even start to use it for things other than research. Also, I studied at
Glasgow, home of the Glasgow Haskell Compiler (GHC). I'm actually in Edinburgh
at the moment, home of <a
href="http://en.wikipedia.org/wiki/ML_(programming_language)">ML</a> but if
you have a look in lib.ed.ac.uk, you will see hunners (a Glaswegian term) of
Haskell books, not ML.

Another good choice for learning functional programming would be <a
href="http://mitpress.mit.edu/sicp/">Structure and Interpretation of Computer
Programs</a>, also called SICP and the Wizard Book, which uses scheme. I
suspect it is worth following this course even if you do already know how to
program functionally as it is generally highly thought of and I know of good
programmers who have found it useful, despite it being designed as first year
course.

I first saw Haskell in second year at Glasgow when I went to a few classes on
it. I was studying electronics too though so couldn't officially take the
class and I didn't get very far. It seems I have now ended up using the
Glasgow Haskell Compiler for the first time here in Edinburgh. :)

Compilers and books then, which should you use? I am reading <a
href="http://www.cs.kent.ac.uk/people/staff/sjt/craft2e">Thompson</a>. This
was used for the course in Glasgow and also fills the shelves of the Edinburgh
University library. I noticed on the book website there is actually a <a
href="http://www.haskellcraft.com/craft3e/Home.html"> third edition</a> now.

A rather more trendy book is <a href="http://learnyouahaskell.com/">Learn You
a Haskell for Great Good!</a>. I am told this is less dry than Thomson but I'm
not sure if soggy books are a good thing. It does have a nice picture of an
elephant on the cover though and pretty colours on the website.

What about a compiler and interpreter? An interactive interpreter, or REPL
(Read Eval Print Loop) as lispers call it, is certainly a good thing to have
and learn with. Thompson uses <a href="http://www.haskell.org/hugs/">HUGS</a>,
which I started with but the <a href="http://www.haskell.org/ghc/">GHC</a>
also has an interpreter, GHCi, which I have now switched to. I note that the
latest edition of Thompson uses GHCi too. GHC seems to be the standard
compiler so I would recommend using it. See also <a
href="http://www.haskell.org/haskellwiki/Implementations">Haskell
Implementations</a>.

Back to what I'm doing to learn Haskell then. I'm now on Chapter 14 of
Thompson, Algebraic Types, but skipped most of the exercises, which I intend to
go back to. I'm also doing <a href=http://projecteuler.net/">Project
Euler</a>. These mathematical problems seem well suited to a mathematical sort
of language like Haskell but perhaps this is making it too easy. There is the
old question of whether functional languages are suited to real problems, and
the fact that I won't know how to print "Hello, world!" until Chapter
18.

I think I'll leave it at that for now but I intend to say more in further
posts.
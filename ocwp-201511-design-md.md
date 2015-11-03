# Markdown: HTML for humans

## OC WordPress Designers Meetup<br>November 2, 2015

# What is Markdown?

Developed by John Gruber for use on his blog, [Daring Fireball][], he [released
it](https://daringfireball.net/projects/markdown/) with a liberal license

[Daring Fireball]: http://daringfireball.com

# No, I mean, what is it?

It's a streamlined Markup Language that produces HTML (another markup language).

# What's a Markup Language?

If you want to impress your friends at parties, you can tell them it's
a programming language that lets you tell a computer what to tell to other
people.

# Side-by-Side

Would \*you\* rather \*\*write\*\* out:

\* A nested list
&nbsp;&nbs;\* with even only two levels
\* in \`HTML\`,
&nbsp;&nbsp;\* or as something lighter?

Would \*you\* rather \*\*read\*\* it as \`HTML\`?

* * *

<pre>
&lt;p&gt;Would &lt;em&gt;you&lt;/em&gt; rather &lt;strong&gt;write&lt;/strong&gt; out:&lt;/p&gt;
&lt;ul&gt;
  &lt;li&gt;A nested list
    &lt;ul&gt;
      &lt;li&gt;with even only two levels&lt;/li&gt;
    &lt;/ul&gt;
  &lt;/li&gt;
  &lt;li&gt;in &lt;code&gt;HTML&lt;/code&gt;,
    &lt;ul&gt;
      &lt;li&gt;or as something lighter?&lt;/li&gt;
    &lt;/ul&gt;
  &lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;Would &lt;em&gt;you&lt;/em&gt; rather &lt;strong&gt;read&lt;/strong&gt; it as &lt;code&gt;HTML&lt;/code&gt;? &lt;/p&gt;
</pre>

# What was that?

Markdown is a series of shorthands for `HTML` markup

\*Single Asterisks\* --- &lt;em&gt;<br>
\*\*Double Asterisks\*\* --- &lt;strong&gt;<br>
\# Single pound at the start of a line --- &lt;h1&gt;<br>
\#\# Double pound at the start of a line --- &lt;h2&gt;<br>
...<br>
\#\#\#\#\#\# Sextuple pound at the start of a line --- &lt;h6&gt;

Standalone paragraphs in plaintext get the &lt;p&gt; tags

And more later in a demo.

# In WordPress

It's done with plugins:

* [Jetpack](http://jetpack.me) --- Has a lot more than Markdown with it
* [WP-Markdown](https://wordpress.org/plugins/wp-markdown/)

With both of these, Posts, Pages, Comments, and more can take Markdown input.

# A Fellow Traveler

[Smarty Pants](http://daringfireball.net/projects/smartypants/) --- typography
for the web, also by John Gruber

It has a counterpart that's already in WordPress, called
[`wptexturize`](https://codex.wordpress.org/Function_Reference/wptexturize)

# Tools

John Gruber picked the name for his "try it before you buy it" form

[Markdown Dingus](http://daringfireball.net/projects/markdown/dingus)
[Markdown Extended Dingus](https://michelf.ca/projects/php-markdown/dingus/)

And there's always [CodePen.io](http://codepen.io)


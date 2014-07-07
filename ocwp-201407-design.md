# How to Theme

## A guided syllabus for making a theme

<http://static.davidthemachine.org/placeholder>
<!-- make this a footer? -->

---

What you're going to need:

* A knowledge of HTML and CSS
* A text editor that has **syntax coloring**
  * Sublime (cross-platform) <http://www.sublimetext.com/>
  * Gedit (cross-platform) <https://wiki.gnome.org/Apps/Gedit#Download>
  * Coda (Mac OS) <https://panic.com/coda/>
  * Notepad++ (Windows) <http://notepad-plus-plus.org/>
  * Dreamweaver (Mac OS & Windows) <http://www.adobe.com/products/dreamweaver.html>

---

# Syntax Coloring

Like having sentences diagrammed for you

![Sentence Diagram](img/sentence_diagram.png)

---

TODO: picture of plain code

TODO: picture of syntax highlighted code

Line Numbering also helps, but it's not essential

---

# Preparing Your Wordpress Install for Theming

* Work on a standalone, private server, I recommend DesktopServer, but I have
  not used it

  <http://serverpress.com/products/desktopserver/>

* Import theme testing content using the steps outlined at

  <http://codex.wordpress.org/Theme_Unit_Test>

---

# Things you will learn

* PHP

* WordPress Functions

* WordPress Theme Organization

All at once!

---

# Immersion

We're going to look at the Naked Theme, hosted at
<http://naked-wordpress.bckmn.com/>. It's made for people to study and learn
from.
---

# What's needed for a theme?

At the bare minimum: `style.css` and `index.php`

The `style.css` file has a special header section that announces the name of the
theme, the author, and other details

From Naked Theme:

    /*
    Theme Name: Naked Wordpress
    Theme URI: http://bckmn.com/naked-wordpress
    Author: J Beckman
    Author URI: http://bckmn.com
    Description: A super bare theme for designers who don't know Wordpress PHP but
    want to build with Wordpress.
    Version: 1.0
    License: GNU General Public License
    ...
    */

---

# PHP Crash Course

What you need to know about PHP so you're familiar with what's in a typical theme.

My approach to learning a new language is to get reading comprehension in place
before learning to write.

This is a quick overview, at 40,000 feet

## PHP Blocks

Marked with

    <?php ... ?>

Just as a sentence needs to end with '.' or '?' or '!' to be correct, PHP
statements must end with a ';' to be correct.

---

# Hello World

For programming languages, the tradition is to show off what an "easy" program
would look like:

    <?php
    echo "Hello World";
    ?>

---

# Code Comments

The Naked Theme has extensive comments written about what is going on in all
the pages and all the parts of the theme

    // This is a standalone comment

    # This is another standalone comment

    /*
    * this style of commenting you've seen before in CSS
    */

---

# PHP Grammar

Be able to recognize what piece of a statement is what

## Nouns & Verbs

Be able to recognize what part of the PHP statement is what.

### Nouns

Numbers, Strings, PHP treats them differently

Strings need quotes, "" or '', they can be joined together (concatenated) with
a '.'

Numbers: anything you can do arithmetic with

### Verbs

Functions & built-in commands

---

# Control Structures

If-Then Statements:

    if ( have_posts() ) {                            if ( have_posts() ):
      ...                                              ...
    } else {                            Or           else:
      ...                                              ...
    }                                                endif;

  Switches: not

  switch ( $thing )

---

* Loops
    for
    foreach

      while(  ):
        ...
      endwhile;

* Functions

* Where to read up about these things

  * <http://php.net>
  * <http://stackoverflow.com>
  * <http://wordpress.stackexchange.com>

---

# WordPress functions

WordPress is written with PHP, and you'll need to learn the PHP functions that
WordPress uses, and how a theme is organized

Learning how to navigate the Codex is half the battle, as GI Joe would say.

* <http://codex.wordpress.org>

---

WordPress developers are working on a better approach to documenting how
WordPress does things, and the resulting site is:

* <http://developer.wordpress.org/reference/>

---

# Theme organization

<http://codex.wordpress.org/Template_Hierarchy>

[![Template Hierarchy](img/Template_Hierarchy-thumb.png)](img/Template_Hierarchy.png)

---

# Making your own theme from scratch?

No!

The WordPress theme developers have a template theme they use to start all their
new default themes, Underscores:

<http://underscores.me>

---

# Whitescreen

The result of loading a broken PHP file.

You **will** whitescreen your site when developing a theme, so if you're cowboy
coding anyways, don't.

Seriously, don't.

---

# Diagnosing Whitescreens

Know where your development server keeps its server logs. The logs will tell
you, in PHP-ese, what your bug is. Copy/paste the error message into Google, and
see what comes up.

In your development `wp-config.php`, make sure you have:

    define( WP_DEBUG, TRUE );

DesktopServer has an option for "Enable Trace and Debug", turn it on for an even
greater deluge of logging details.

---

# Checking Your Work

Is your theme made using the latest that WordPress has to offer? Is it put
together correctly?

WordPress Theme Check <https://wordpress.org/plugins/theme-check/>

Every theme get gets hosted at WordPress.org has to pass these checks.

---

# Trial by Fire

Take an old theme, and make it Theme Check stops complaining about it

Like the old Default Theme

<http://wordpress.org/themes/default>

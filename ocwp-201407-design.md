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

What you need to know about PHP to understand what's in the Naked Theme:

* PHP stuffs:

    <?php ... ?>

    This is where syntax highlighting comes in handy.

* Comments

    // This is a standalone comment

    # Another way to make a standalone comment

    /*
    * this style of commenting you've seen before in CSS
    */

  The Naked Theme has extensive comments written about what is going on in all
  the pages and all the parts of the theme

* Control Structures

    if ( count( $posts ) > 0 ) {                              if ( count( $posts ) > 0 ):
      echo "Condition the first";                               ...
    } elseif ( count( $posts ) === 0 ) {                      elseif ( count( $posts ) === 0 ):
                                               Or               ...
    } else {                                                  else:

    }                                                         endif;

    while():
    endwhile;

* Functions

* Where to read up about these things

  * <http://php.net>
  * <http://stackoverflow.com>
  * <http://wordpress.stackexchange.com>

---

# Whitescreen

The result of saving a broken PHP file.

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

[![Template Hierarchy](img/300px-Template_Hierarchy.png)](img/Template_Hierarchy.png)

---

# Underscores

<http://underscores.me>

---

# Checking Your Work

Is your theme made using the latest that WordPress has to offer? Is it put
together correctly?

WordPress Theme Check <https://wordpress.org/plugins/theme-check/>

Every theme get gets hosted at WordPress.org has to pass these checks.

---

# Jumping In the Deep End

Take an old theme, and make it Theme Check stops complaining about it

Like the old Default Theme

<http://wordpress.org/themes/default>

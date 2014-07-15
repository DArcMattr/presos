# Automagical Code Checking

## PHP Quality Assurance tools for WordPress Projects

by David Arceneaux

<http://davidthemachine.org>

<http://static.davidthemachine.org/presos/ocwp-201407-develop.html#/php-quality-assurance-tools-for-wordpress-projects>

# "Given enough eyeballs, all problems are shallow"

--- Linus Torvalds on the nature of open source software.

Other developers have been bitten by more/different things than you have been.

# Problems with getting other eyeballs

* Working on closed source

* Not enough other people work in the same problem area

* Reluctant about wasting others' time

# PHP Quality Assurance Toolchain

A set of projects curated at <http://phpqatools.org>

I'll be focusing on PHP Code Sniffer & PHP Mess Detector

These are command-line tools

# PHP Mess Detector

Opinionated code critique tool <http://phpmd.org/about.html>

Analyses how you use variables, functions & classes

Best to install with Composer

# PHP Code Sniffers

PHP Code Sniffer checks code formatting for

* tabs vs spaces
* levels of indentation
* spaces around function inputs & operators

<https://github.com/squizlabs/PHP_CodeSniffer>

The makers recommend installation via PEAR, but Composer works too.

# WordPress Sniffs

The WordPress Development Team has a set of sniffs for PHPCS, based on the
project's [coding standards](http://make.wordpress.org/core/handbook/coding-standards/)

<https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards>

The installation is involved, but there's an effort to made it install by
Composer

# Conveniences

PHPCS & PHPMD are made to be command-line tools, but there are plenty of plugins
made for your favorite text editor or development IDE.

My examples will be with Vim in the
(vim-phpqa)[https://github.com/joonty/vim-phpqa] plugin

# Checks in WordPress

For new themes & plugins that are to be hosted on wordpress.org, they need to
pass the tests coded in [Theme Check](https://wordpress.org/plugins/theme-check/) and
[Plugin Check](https://wordpress.org/plugins/plugin-check/) (though Plugin Check hasn't
been updated in a while)

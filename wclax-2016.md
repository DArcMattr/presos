# Leveling Up As a WordPress Developer

## A workshop on command line tools

A guided syllabus

<https://static.davidthemachine.org/presos/wclax-2016.html#/a-workshop-on-command-line-tools>

# Requirements

A Unix-like system that can host WordPress

<iframe width="560" height="315" src="https://www.youtube.com/embed/SpLRTAGa6bU" frameborder="0" allowfullscreen></iframe>

Mac, Linux, & BSD&mdash;with workarounds for Windows (virtual machine upcoming
Windows Subsystem for Linux)

# Varying Vagrant Vagrants

I use this as a common reference point. Every system will have its own quirks.
I&rsquo;m picking it because it has comes with WP-CLI, PHP Code Sniffer and PHP
Mess Detector installed & configured for developing a WordPress site

Takes an hour+ to install everything necessary for it, see the instructions at
<https://github.com/Varying-Vagrant-Vagrants/VVV/>

# WP-CLI

WordPress-Command Line Interface <http://wp-cli.org>

If there&rsquo;s one tool I talk about here, install this.

# WP-CLI: Shell Commands

`wp help`, can be used for any of its sub-commands too

    wp core check-update
    wp plugin list --fields=name,version,update_version --status=active --update=available
    wp theme list --fields=name,version,update_version --status=active --update=available

You can copy/paste this text chunk into a text file, name it something like
`sync.sh`, and run the command `chmod +x sync.sh` -- you got yourself
a <strike>stew</strike> helper shell script.

# WP-CLI: More conveniences

Sync&rsquo;ing DB images without having to embed passwords in shell scripts:

~~~bash
#!/bin/bash

PWD=$(pwd)

DUMPFILE="site$(date +%Y%m%d).mysql.xz"

ssh hostalias \
  "cd /var/www/vhosts/site.domain && wp db export --single-transaction -" | \
  pv | \
  tee >(xz -c > "${PWD}/${DUMPFILE}") | \
  wp db import - | \
  2>&1
~~~

# WP-CLI: PHP Interactive Mode

`wp shell`: a Read-Evaluate-Print-Loop (REPL) for your WordPress installation

This lets you run PHP code in a *snapshot* load of the site you&rsquo;re working
on. This is what I consider to be the killer feature of WP-CLI.

# WP-CLI: MySQL Interactive Mode

`wp db cli`: REPL for the DB

This works on a realtime view of your database.

~~~
SHOW TABLES;
SHOW COLUMNS FROM wp_posts\G
~~~

The `\G` is is an alternative to `;` which prints query results in a long view,
which is more humane for a terminal.

# And a trick!

Vi mode! <small>Or Emacs if that&rsquo;s your thing.</small>

Why Vi mode? It lets you navigate and manipulate command lines without having to
move your fingers far from the home row. The main benefit is also its major
drawback: it&rsquo;s modal, and its keybinds sometimes lack good mnemonics.

There are plenty of tutorials for Vim (modern Vi), even online interactive ones.

How is this done?

# Readline config

This uses the Readline library

<https://gist.github.com/DArcMattr/267dae1163133fdb120c898c104c91f3>

~~~sh
# Two escapes clears command line
"\e\e": "\C-a\C-k"

"\t": menu-complete

set keymap vi
set editing-mode vi
$if mode=vi
  set keymap vi-command
  set keymap vi-insert
  "\C-p": history-search-backward
  "\C-l": clear-screen
$endif

set bell-style off
set colored-stats on
set completion-ignore-case On
set convert-meta off
set expand-tilde on
set input-meta on
set mark-directories on
set meta-flag on
set output-meta on
set show-all-if-ambiguous on
set visible-stats on

$include /etc/inputrc
~~~

<small>Also worth looking into: Tmux <https://tmux.github.io/></small>

# WP-CLI configuration

Reduces repeating yourself, create a `wp-cli.local.yml` file. reduces typing of
same options repeatedly

## Example `wp-cli.local.yml` for theme in a multisite

~~~YAML
user: 1
url: multi.site.local
~~~

# PHP Code Sniffer

This is a 'linter', it&rsquo;s made to help pick at lint in your code.

There is a WordPress ruleset for this, which is tricksy to install. I recommend
following what's going on in VVV&rsquo;s [`provision.sh`](https://raw.githubusercontent.com/Varying-Vagrant-Vagrants/VVV/develop/provision/provision.sh) to install it

`phpcs --standard=WordPress <input file>`

# PHP Mess Detector

Also included in a default VVV installation.

Outside critique for programming style that&rsquo;s beyond what, its
recommendations are tweakable

# Extra tools

Oh-My-ZSH: <https://github.com/robbyrussell/oh-my-zsh>, has shell helpers for
using WP-CLI, Git, and informative prompts

Git Hooks: <http://webadvent.org/2008/dont-commit-that-error-by-travis-swicegood.html>
The sky is the limit here, you can run any shell script at any stage in your Git
workflow.

These hooks can be installed for any new git project if you follow the
directions at <https://coderwall.com/p/jp7d5q/create-a-global-git-commit-hook>

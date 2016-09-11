# Leveling Up As a WordPress Developer

## A workshop on command line tools

More like a guided syllabus

<https://static.davidthemachine.org/presos/wclax-2016.html#>

# Requirements

A Unix-like system that can host WordPress

<iframe width="560" height="315" src="https://www.youtube.com/embed/SpLRTAGa6bU" frameborder="0" allowfullscreen></iframe>

Mac, Linux, & BSD&mdash;with workarounds for Windows (virtual machine upcoming Windows Subsystem for Linux)

# Varying Vagrant Vagrants

I use this as a common reference point. Every system will have its own quirks.
I&rsquo;m picking it because it has comes with WP-CLI, PHP Code Sniffer and PHP
Mess Detector installed & configured for developing a WordPress site

Takes an hour+ to install everything necessary for it <https://github.com/Varying-Vagrant-Vagrants/VVV/>

# WP-CLI

WordPress-Command Line Interface <http://wp-cli.org>

If there&rsquo;s one tool I talk about here, install this.

# WP-CLI: Shell Commands

`wp help`, can be used for any of its sub-commands too

    wp core check-update
    wp plugin list --fields=name,version,update_version --status=active --update=available
    wp theme list --fields=name,version,update_version --status=active --update=available

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

# WP-CLI: Interactive Modes

`wp shell`: a Read-Evaluate-Print-Loop (REPL) for your WordPress installation

`wp db cli`: REPL for the DB

And a trick: Vi mode! Or Emacs if that&rsquo;s your thing.

This uses the Readline library

# Readline config

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

# WP-CLI configuration

Reduces repeating yourself, create a `wp-cli.local.yml` file. reduces typing of
same options repeatedly

## Example for theme in a multisite

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

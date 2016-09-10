# Leveling Up As a WordPress Developer

## A workshop on command line tools

More like a guided syllabus

[URL]()

# Requirements

A Unix-like system

<iframe width="560" height="315" src="https://www.youtube.com/embed/SpLRTAGa6bU" frameborder="0" allowfullscreen></iframe>

Mac, Linux, & BSD&mdash;with workarounds for Windows (virtual machine upcoming Windows Subsystem for Linux)

# Varying Vagrant Vagrants

Takes an hour+ to install everything necessary for it https://github.com/Varying-Vagrant-Vagrants/VVV/

I&rsquo;m picking it because it has comes with WP-CLI, PHP Code Sniffer and PHP
Mess Detector installed & configured for developing a WordPress site

# WP-CLI

WordPress-Command Line Interface

If you don&rsquo;t

# WP-CLI: Shell Commands

`wp help`, can be used for any of its sub-commands too

    wp core check-update
    wp plugin list --fields=name,version,update_version --status=active --update=available
    wp theme list --fields=name,version,update_version --status=active --update=available

`wp db export`

# WP-CLI: Interactive Modes

`wp shell`: a Read-Evaluate-Print-Loop (REPL) for your WordPress installation

`wp db cli`: REPL for the DB

# A digression: Readline config

Vi mode! Or Emacs if that&rsquo;s your thing.

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

# PHP Code Sniffer

This is a 'linter', it&rsquo;s made to help pick at lint in your code.

# PHP Mess Detector

Outside critique for programming style that&rsquo;s beyond what, its recommendations are tweakable

# Extra tools

# Ye Olde Tyme WordPress AJAX

## Understanding the Old to Roll in the New

by David Arceneaux

<http://davidthemachine.org>

<http://static.davidthemachine.org/presos/ocwp-201509-develop.html#/understanding-the-old-to-roll-in-the-new>

# What is it?

AJAX - Asynchronous JavaScript And XML

Started off as an undocumented Internet Explorer feature and now powers the
modern web

# How does WordPress handle it?

By hooks, and the rest is up to you:

You could read and parse the documentation:
<https://codex.wordpress.org/Plugin_API/Action_Reference/wp_ajax_(action)>

There's some sneaky way of using the `template_redirect` function to do the
same, but it doesn't have an official hook made for using it as the stuff of
AJAX requests.

# RESTful?

REpresentational State Transfer, HTTP has no memory; actions & inputs need to be
conveyed in a web request

Actions are generally associated with a URL fragment (called an *Endpoint*), and
even an HTTP request type (like `GET` & `POST`)

Plenty of approaches to handling this, but WP-Ajax requires the endpoint be the
`admin-ajax` handler file.

This is usually [`/wp-admin/admin-ajax.php`](https://core.trac.wordpress.org/browser/trunk/src/wp-admin/admin-ajax.php)

Some hosts have their server config'ed to check referrer headers to deny abusers
an opening.

# How do I handle it?

For an example: [Ajax Load More](https://wordpress.org/plugins/ajax-load-more/)

We'll look at the "Developers" tab on the plugin page, and look at the code in
Trac.

(to sniff around the source of a WordPress plugin, no need to download and look,
as long as you know a few things about Subversion, like the current code is
browseable in Trunk)

An example of the `template_redirect` approach is found in [AJAX Read
More](https://wordpress.org/plugins/ajax-read-more/)

# Security!

The code you write is on a blank slate. It *must* be programmed defensively.

Even code that's for read-only operations can still be used for evil and not
good.

For code that allows users to modify or add content, keep in mind that you can't
"trust" the User ID, and I recommend checking out the [WP Nonce
system](http://codex.wordpress.org/WordPress_Nonces) in addition to sanitizing
and filtering user input.

# Why do I need to know this?

Even if you don't code AJAX capabilities yourself into a theme or plugin, you
may need to maintain it, and even transition it to . . .

# The Future!

The JSON WP-API is in Beta 4 at the time of this presentation <http://v2.wp-api.org/>

Provides a URL-based way to hook into core functions, like getting posts for
a front page.

Work is being done to make this hook-able, so custom interactive features can be
ported over to a more RESTful.

# Transitioning to the Future

If you're tasked with converting existing AJAX features, there's no
quick & dirty conversion script.

You'll need to open up your text editor, search for `wp_ajax_` and follow the
rabbit down the hole.

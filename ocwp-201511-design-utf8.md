# Unicode, Emoji, & WordPress

## OC WordPress Designers Meetup<br>November 2, 2015

# History of Unicode

Started in 1987 as a joint effort between Xerox & Apple[^1]. The problem it
solves is a consistent way to handle different languages' character sets.

[^1]: See [https://en.wikipedia.org/wiki/Unicode#History](https://en.wikipedia.org/wiki/Unicode#History)

# Unicode & UTF-8

UTF-8 is the most common Unicode encoding in use. It is extensible, and has
already been used for the smorgasbord of icon fonts out there.

# Intro to Emoji

It's a Japanese loanword, literally meaning "Picture Character"[^2], first
implemented in the Japanese market, and officially embraced with Unicode
6.0[^3]. Native OS support followed soon after.

[^2]: See [https://en.wikipedia.org/wiki/Emoji](https://en.wikipedia.org/wiki/Emoji)
[^3]: See [http://unicode.org/versions/Unicode6.0.0/](http://unicode.org/versions/Unicode6.0.0/)

# What is it?

Most emoji characters are done with PNG images embedded into the font.
Microsoft's approach uses layered vector images. Either way, these images will
not act like other fonts in inheriting text color settings, and the bitmap
images won't scale up gracefully to high resolution images.

# WordPress and Emoji

Version 4.2 is first release to pull in Emoji Support.

This update is a big jump forward for the system requirements, requiring MySQL
5.5 for utf8mb4 support.

# Fonts for Emoji

* Windows: Segoe UI symbol font, first introduced in Windows 8.1
* Android Emoji Font: first introduced with Android 4.4
  * Samsung & LG have their own custom fonts
* iOS Emoji: iOS v7+
* [Twemoji](https://twitter.github.io/twemoji/) Twitter Emoji characters, open source, and used in WordPress Admin
* [Emoji One](http://emojione.com/developers)

# Entering Emoji Characters

Mobile Devices --- the built-in keyboard has an emoji button

On desktop, you'll need to make use of the on-screen keyboard

Projects like Emoji One provide for shortname replacement

Lastly, Copy & Paste from the helper sites

[Example](http://codepen.io/DArcMattr/pen/PParqw)

# Helper Websites

* [FileFormat.info](http://fileformat.info) site has UTF-8 Characters
* [Emojipedia](http://emojipedia.org/)
* [Emoji.codes](http://emoji.codes/) also host of the EmojiOne project


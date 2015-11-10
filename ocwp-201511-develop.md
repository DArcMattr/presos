# The Future of the Internet and WordPress: IPv6 & HTTP/2

## November 9, 2015 OC WordPress Developer Meetup

# IPv4 address have run out

That's out of 4,294,967,296 possible maximum addresses

All addresses held in reserve have been assigned, and it's only possible to
recycle old ones from now on<br>
<https://en.wikipedia.org/wiki/IPv4_address_exhaustion>

Network Address Translation (NAT) fills in a gap, done on the ISP level

# IPv6 to the rescue

Been out for a while (since 1998), but lack of perceived necessity has made
adoption proceed at a lax pace.

Major OS support is in place, your phone network probably runs 100% as IPv6

# What's it look like?

8 blocks of 4 hexadigits, separated by colons, with suppressed leading 0s, and
`::` is used as a substitute for blocks of all 0

For example:

* `2604:a880:1:20::3b:d001`
* localhost is `::1`

giving you:

340,282,366,920,938,463,463,374,607,431,768,211,456 possible maximum addresses.

# Host & Domain Name Service support

Since there is major OS support, no reason why your web host shouldn't have the
requirements in place. Ask for IPv6 today!

Some Domain Name registrars also provide a DNS control panel; check and set the
AAAA record with your assigned IPv6 address

# In the meantime

*Holding onto a unique IPv4 address is an opportunity cost*

No longer necessary to serve HTTPS on a unique port ([SNI](https://wiki.apache.org/httpd/NameBasedSSLVHostsWithSNI)), and was never an SEO
requirement ( watch a Googler talk about it <https://youtu.be/4peSUa2FKvk> )

# Software support

Where your site or plugin might log IP address, make sure it's not got IPv4
assumptions baked in

Check your device's settings to see if you're on an IPv6 network now

There are

# HTTP/2

No looming disaster on the horizon here, but a desire to streamline what we've
already got.

Google had the advantage of playing with new ways to serve webpages between its
sites and its Chrome browser with the SPDY protocol. It shared its results with
the rest of the Internet Stakeholders and

It's designed to work nearly transparently, URLs won't change

# What does it have over plain ol' HTTP?

Header compression, by being binary & stream-compressed.

Pipelining, pushing all page assets through a single TCP/IP connection, instead
of letting your browser request many separate assets through HTTP requests.

Mandatory HTTPS, recommended in the standard, and major browser vendors are
implementing that recommendation

# Do you have to do anything special for HTTP/2?

Yes, it involves undoing what you have to do for present-day sites:

* ~~Image spriting~~
* ~~JS & CSS file concatenation~~

The Demo: <https://http2.akamai.com/demo>

# How do you get it?

There's a module out for current Apache HTTP (v 2.4.17+), nginx 1.9.5+ has
support built in

Test your server <https://tools.keycdn.com/http2-test> online, or through your
browser's dev tools


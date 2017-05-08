# docbook2odf

Style sheets and utilities to transform DocBook XML to OpenDocument format.
More detailed (historical) information is available at
[open.comsultia.com/docbook2odf](http://open.comsultia.com/docbook2odf).

This project is forked from
[dmoonfire/docbook2odf](https://github.com/dmoonfire/docbook2odf).
Its intentions are different: there are various issues with the Perl
scripts and man page supplied, and the goal is simply to fix those, at
which point they can be integrated back into the other project. Since
the other project's goal is to migrate support from DocBook 4 to 5,
this project may also be useful for maintaining the existing DocBook 4
support for those still using that version, since the original upstream
project appears to be long abandoned.

## Dependencies

Perl's [Image::Magick](https://metacpan.org/pod/Image::Magick), or
alternately both [gif2png](http://www.catb.org/esr/gif2png/) and
[Netpbm](http://netpbm.sourceforge.net/) (for the
[anytopnm](http://netpbm.sourceforge.net/doc/anytopnm.html) utility,
specifically).

Perl's [XML::LibXSLT](https://metacpan.org/pod/XML::LibXSLT), or
alternately [libxslt](http://xmlsoft.org/libxslt/) (for the
[xsltproc](http://xmlsoft.org/libxslt/xsltproc2.html) utility,
specifically).

Perl's [Archive::Zip](https://metacpan.org/pod/Archive::Zip), or
alternately the [zip](http://www.info-zip.org/Zip.html) utility.

It is recommended that the Perl module dependencies be satisfied for
optimal performance.

## License

docbook2odf is free software; you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by the
Free Software Foundation; either version 2 of the License, or (at your
option) any later version.

See the file LICENSE.txt for the full text of GNU General Public License
version 2.

## To do (present focus of improvements to the original code)

At present, some code paths won't run in non-POSIX environments (e.g.
native MS Windows), because there are Unix-like assumptions scattered
throughout the command line invocations, e.g. an expectation that a
**file** command line utility exists, and that a **TERM** environment
variable exists. All of this will ultimately be replaced with use of
the standard Perl module
[IPC::Cmd](http://perldoc.perl.org/IPC/Cmd.html), which provides
portability.

Further to the previous point, the code creates temp files in both an
insecure and non-portable manner, and this should be replaced with use
of [File::Temp](http://perldoc.perl.org/File/Temp.html).

Unicode support needs consideration.

Other, lesser issues: external commands are called without
checking the return value or warning if they failed. There are multiple
points of exit that aren't immediately visually apparent. There are
whitespace issues. There are redundant commented-out blocks. There are
comments written in the first person.

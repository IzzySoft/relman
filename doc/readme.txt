===============================================================================
Release Manager     (c) 2007-2009 by Itzchak Rehberg (devel AT izzysoft DOT de)
-------------------------------------------------------------------------------
$Id$
-------------------------------------------------------------------------------
FrontEnd to (and extender of) pkgmake
===============================================================================

Contents
--------

1) Copyright and warranty
2) Requirements
3) Limitations
4) What is relman, and what does it do?
5) Installation
6) Usage
7) Additional information

===============================================================================

1) Copyright and Warranty
-------------------------

This little program is (c)opyrighted by Andreas Itzchak Rehberg
(devel AT izzysoft DOT de) and protected by the GNU Public License Version 2
(GPL). For details on the License see the file LICENSE in this directory. The
contents of this archive may only be distributed all together.

===============================================================================

2) Requirements
---------------

The requirements depend on your intended use of this script. Basically you need
pkgmake and its dependencies - everything else is described there. Depending on
the distribution way you decide for, you may additionally need an ftp command
line client (it should be called via "ftp"), and/or openssh with the scp utility.
Usually these all are shipped with your distribution.

===============================================================================

3) Limitations
---------------

No warranties at all :) For more, see also the pkgmake documentation. If you
think there's something missing in one of these two packages, don't hesitate
to notify the author (me) about it - chances are quite good it will be added
if possible.

Moreover: Error checking must for sure be much more improved...

===============================================================================

4) What is relman, and what does it do?
---------------------------------------

Ahem - well, since the short description already sayed "frontend to and
extender of pkgmake", you should first read what pkgmake is. Relman adds to
this: It lets you define all your projects in a single configuration file with
all their special settings they may require (e.g. the different source dirs,
possible pre-run scripts and more). And it caters for the distribution of the
resulting packages. This way you should end up with the only simple need to
call "relman <package> <version>" to make a release - and when the script is
finished, there's a tarball sent to sourceforge via FTP, another one via SCP
to your web server, and the *.deb/*.[s]rpm files are added to the right
repositories already. Well, sometimes you may need one run without distribution
beforehand to check if everything's doing fine. That's just one more parameter
to remember: "relman <package> <version> -nodist"...

===============================================================================

5) Installation and configuration
---------------------------------

Unpack the tarball (you probably already did so when you're reading this).
Check the path specifications at the top of the Makefile (they should be fine
for Ubuntu and most likely other Debian derivates), and finally simply run
"sudo make install" (see doc/install.txt for more details on this way of
[un]installation).

Alternatively, put the relman executable somewhere in your path, "sudo makedir
/etc/relman" and put the files "relman.conf" and "version" there. Optionally
put the man pages to their locations, and you are done with the installation.

Finally edit the settings in the /etc/relman/relman.conf file (or optionally,
copy it to ~/.pkgmake/ and edit that copy) to reflect your configuration.
Relman reads the configuration in the order internal - /etc/relman/ - ./.relman/
- each time overwriting the old settings with the new definitions (if any).

===============================================================================

6) Usage
--------

Usually - i.e. if your configuration is set up correctly - you will just call
the script with "relman <package> <version>" - optionally with the "-nodist"
option for testing the package build. Calling the script without parameters
lets relman enter interactive mode, so you can even process packages you did
not (yet) define.

After successfully installing the package, more information can be found
calling "man relman" and "man relman.conf".

===============================================================================

7) Additional Information
-------------------------

To get more detailed information on the syntax of command line parameters,
please refer to the manpage of relman(8). For the config file, there is a
manpage available for relman.conf(5).

For information on the development as well as availability of new versions, you
may want to visit the project site, i.e.
  http://projects.izzysoft.de/trac/relman
or the authors website, more precisely:
  http://www.izzysoft.de/?topic=software
or the project page on Freshmeat:
  http://freshmeat.net/projects/relman
On the second mentioned page, you will also find more information about other
programs written by the author - as you will on Freshmeat when visiting
  http://freshmeat.net/~izzysoft/

To file a bug report, feature request or simply have a look at the current
development, please visit http://projects.izzysoft.de/trac/relman

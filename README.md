### What is relman, and what does it do?

Since the short description already sayed "frontend to and extender of
pkgmake", you should first read what
[pkgmake](https://github.com/IzzySoft/pkgmake) is. Relman adds to this: It lets
you define all your projects in a single configuration file with all their
special settings they may require (e.g. the different source dirs, possible
pre-run scripts and more). And it caters for the distribution of the resulting
packages. This way you should end up with the only simple need to call `relman
<package> <version>` to make a release - and when the script is finished,
there's a tarball sent to sourceforge via FTP, another one via SCP to your web
server, and the *.deb/*.[s]rpm files are added to the right repositories
already. Well, sometimes you may need one run without distribution beforehand
to check if everything's doing fine. That's just one more parameter to
remember: `relman <package> <version> -nodist` …

For more details as well as instructions on installation, configuration and
usage, please see the project wiki.
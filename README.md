# docker-cntlm
An [Alpine][alpine] Linux based [Docker][docker] container of the Cntlm Authentication Proxy.

You can use this as a base image or override the configuration parameters
on the ENTRYPOINT argument for `docker run`.

Configuration file should be at `/etc/cntlm.conf` in case you want to upload yours.

I am distributing a binary compiled to suit my needs, since cntlm is not yet available on
[Alpine][alpine], you don't have to use it.

See the project [homepage][cntlm] for usage.

A big thank you to David Kubicek <cntlm@awk.cz> for writting Cntlm and releasing it
as Free Software, consider making a donation on the home page of the project.


[alpine]: https://hub.docker.com/_/alpine/
[cntlm]: http://cntlm.sourceforge.net/
[docker]: http://docker.io

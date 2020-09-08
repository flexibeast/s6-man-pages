# Summary

This repository aims to provide [mdoc(7)](https://man.openbsd.org/mdoc.7)
versions of the HTML documentation for the [s6 supervision
suite](http://skarnet.org/software/s6/).

It is currently a work in progress.

Individual man pages can be produced with
[mandoc(1)](https://man.openbsd.org/mandoc.1):

```
$ mandoc s6-svscan.1.in > s6-svscan.1
```

Alternatively, use the `-a` flag to view them directly:

```
$ mandoc -a s6-svscan.1.in
```

[man(7)](https://man.voidlinux.org/man.7) and HTML versions can be produced with
`mandoc`'s `-T` flag:

```
$ mandoc -T man s6-svscan.1.in > s6-svscan.1.man
$ mandoc -T html s6-svscan.1.in > s6-svscan.1.html
```

To install the man pages, run `make`, followed by the appropriate install command
for your system:

* `make install-mdoc` for mandoc-based systems;
* `make install-man` otherwise.

The default installation directory is `/usr/share/man`, but this can be changed
by setting the `MANPATH` environment variable prior to running `make install-*`.
The user running `make install-*` will need to have the appropriate permissions
for installation in the chosen directory.

The man pages can be uninstalled by running `make uninstall`.

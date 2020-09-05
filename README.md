# Summary

This repository aims to provide [mdoc(7)](https://man.openbsd.org/mdoc.7)
versions of the HTML documentation for the [s6 supervision
suite](http://skarnet.org/software/s6/).

It is currently a work in progress:

* some pages do not yet conform to mdoc(7) conventions;
* some pages need to use more appropriate macros;
* links to Web pages still need to be added.

Man pages can be produced with [mandoc(1)](https://man.openbsd.org/mandoc.1):

```
$ mandoc -a s6-svscan.1
```

[man(7)](https://man.voidlinux.org/man.7) and HTML versions can be produced with
`mandoc`'s `-T` flag:

```
$ mandoc -T man s6-svscan.1 > s6-svscan.1.man
$ mandoc -T html s6-svscan.1 > s6-svscan.1.html
```

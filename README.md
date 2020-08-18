# Summary

This repository aims to provide [mdoc(7)](https://man.voidlinux.org/mdoc.7)
versions of the HTML documentation for the [s6 supervision
suite](http://skarnet.org/software/s6/). It is very much a work in progress.

Man pages can be produced with [mandoc(1)](https://man.voidlinux.org/mandoc.1):

```
$ mandoc s6-svscan.1 | less
```

HTML versions can be produced with the `-T` flag:

```
$ mandoc -T html s6-svscan.1 > s6-svscan.html
```

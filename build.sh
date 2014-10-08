#!/bin/bash

set -xe

make

srcdir=$(dirname $0)

debdir=$srcdir/deb
libdir=usr/local/lib/lua/5.1/
destdir=$debdir/$libdir

mkdir -p $destdir

cp -v zlib.so $destdir

dpkg-deb -b $debdir $srcdir

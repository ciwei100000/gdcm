#!/bin/sh -ex
# Help in generating symbols file:

# http://wiki.debian.org/UsingSymbolsFiles
# http://www.eyrie.org/~eagle/journal/2012-01/008.html
# http://pkg-kde.alioth.debian.org/symbolfiles.html

# libgdcm2.2:
VERS=2.2.0
pkgkde-gensymbols -plibgdcm2.2 -v$VERS   -Osymbols.amd64 -edebian/tmp/usr/lib/libgdcmMSFF.so.2.2 -edebian/tmp/usr/lib/libsocketxx.so.1.2 -edebian/tmp/usr/lib/libgdcmMEXD.so.2.2 -edebian/tmp/usr/lib/libgdcmjpeg8.so.2.2 -edebian/tmp/usr/lib/libgdcmjpeg16.so.2.2 -edebian/tmp/usr/lib/libgdcmjpeg12.so.2.2 -edebian/tmp/usr/lib/libgdcmIOD.so.2.2 -edebian/tmp/usr/lib/libgdcmDSED.so.2.2 -edebian/tmp/usr/lib/libgdcmDICT.so.2.2 -edebian/tmp/usr/lib/libgdcmCommon.so.2.2

pkgkde-symbolshelper create -o debian/libgdcm2.2.symbols -v $VERS symbols.amd64

# libvtkgdcm2.2:
pkgkde-gensymbols -plibvtkgdcm2.2 -v$VERS -Osymbols.amd64 -edebian/tmp/usr/lib/libvtkgdcm.so.2.2 

pkgkde-symbolshelper create -o debian/libvtkgdcm2.2.symbols -v $VERS symbols.amd64

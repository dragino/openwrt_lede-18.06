Source-Makefile: package/feeds/telephony/asterisk-15.x/Makefile
Build-Depends: libxml2/host
Build-Types: host

Package: asterisk15
Menu: 1
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread +USE_UCLIBCXX:uclibcxx +USE_LIBSTDCXX:libstdcpp +jansson +libcap +libedit +libncurses +libopenssl +libsqlite3 +libuuid +libxml2 +zlib
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Complete open source PBX, v15.3.0
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description:  Asterisk is a complete PBX in software. It provides all of the features
 you would expect from a PBX and more. Asterisk does voice over IP in three
 protocols, and can interoperate with almost all standards-based telephony
 equipment using relatively inexpensive hardware.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@
Config:
	source "feeds/telephony/net/asterisk-15.x/Config.in"
@@

Package: asterisk15-sounds
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Sounds support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides the sound-files for Asterisk-15.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-adsiprog
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-app-adsiprog:asterisk15-res-adsi
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: ADSI programming support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'program Asterisk ADSI scripts into phone' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-agent-pool
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Call center agent pool support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'call center agent pool' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-alarmreceiver
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Alarm receiver support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Central Station Alarm receiver for Ademco Contact ID' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-amd
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Answering machine detection support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'answering machine detection' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-authenticate
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Authenticate commands support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Execute arbitrary authenticate commands' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-bridgeaddchan
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Bridge add channel support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'place a channel into an existing bridge' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-bridgewait
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-app-bridgewait:asterisk15-bridge-holding
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Holding bridge support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'place a channel into a holding bridge' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-celgenuserevent
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: User-defined CEL event support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'generate user-defined CEL event' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-chanisavail
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Channel availability check support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'support for checking if a channel is available' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-channelredirect
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Redirect a channel support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'ChannelRedirect application' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-chanspy
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Channel listen in support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'support for listening in on any channel' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-confbridge
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-app-confbridge:asterisk15-bridge-builtin-features +PACKAGE_asterisk15-app-confbridge:asterisk15-bridge-simple +PACKAGE_asterisk15-app-confbridge:asterisk15-bridge-softmix
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: ConfBridge support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Software bridge for multi-party audio conferencing' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-controlplayback
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Control playback support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'trivial application to control playback of a sound file' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-dahdiras
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-app-dahdiras:asterisk15-chan-dahdi
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Execute an ISDN RAS support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'support for executing an ISDN RAS using DAHDI' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-dictate
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Virtual dictation machine support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'virtual dictation machine application' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-directed-pickup
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Directed call pickup support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'support for directed call pickup' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-directory
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Extension directory support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'provide a directory of extensions' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-disa
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Direct Inward System Access support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Direct Inward System Access' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-dumpchan
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Dump info about channel support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'application to dump channel variables' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-exec
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Exec application support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'support for application execution' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-externalivr
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: External IVR interface support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'external IVR application interface' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-festival
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Simple festival interface support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'connect to festival' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-flash
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-app-flash:asterisk15-chan-dahdi
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Flash channel support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'flash a DAHDI trunk' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-followme
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Find-me/follow-me support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'find-me/follow-me application' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-getcpeid
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Get ADSI CPE ID support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'get ADSI CPE ID' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-ices
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Encode and stream support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'stream to an icecast server via ICES' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-image
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Image transmission support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'transmit an image' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-ivrdemo
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: IVR demo support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'IVR demo application' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-milliwatt
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Digital milliwatt [mu-law] test app support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'digital milliwatt test' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-minivm
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Minimal voicemail system support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'a voicemail system in small building blocks working together based on the Comedian Mail voicemail' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-mixmonitor
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Record a call and mix the audio support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'record a call and mix the audio during the recording' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-morsecode
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Morse code support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Morsecode application' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-mp3
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-app-mp3:mpg123
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Silly MP3 support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'silly application to play an MP3 file [uses mpg123]' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-originate
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Originate a call support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'originating an outbound call and connecting it to a specified extension or application' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-page
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-app-page:asterisk15-app-confbridge
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Page multiple phones support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'paging application' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-playtones
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Playtones application support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'play a tone list' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-privacy
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Require phone number support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'require phone number to be entered if no CallerID sent' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-queue
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: True Call Queueing support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'support for ACD' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-read
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Variable read support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'a trivial application to read a variable' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-readexten
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Extension to variable support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'a trivial application to read an extension into a variable' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-record
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Record sound file support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'to record a sound file' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-saycounted
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Decline words support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'applications to decline words according to current language' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-sayunixtime
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Say Unix time support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'an application to say Unix time' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-senddtmf
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Send DTMF digits support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Sends arbitrary DTMF digits' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-sendtext
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Send text support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'transmit a text message' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-skel
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Skeleton [sample] support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'skeleton for development of an Asterisk application' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-sms
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: SMS support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'SMS support (ETSI ES 201 912 protocol 1)' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-softhangup
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Hang up requested channel support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'SoftHangup application' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-speech
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-app-speech:asterisk15-res-speech
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Dialplan Speech support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Dialplan Speech Applications' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-stack
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-app-stack:asterisk15-res-agi
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Stack applications support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Stack applications Gosub Return etc.' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-stasis
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-app-stasis:asterisk15-res-stasis
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Stasis dialplan support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Stasis dialplan application' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-statsd
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-app-statsd:asterisk15-res-statsd
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: statsd dialplan support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'statsd dialplan' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-stream-echo
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Stream echo support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'stream echo' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-system
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: System exec support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'support for executing system commands' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-talkdetect
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: File playback with audio detect support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'for file playback with audio detect' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-test
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Interface test support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'applications to test connection and produce report in text file' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-transfer
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Transfers caller to other ext support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'transfer a caller' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-url
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Send URL support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'app to transmit a URL' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-userevent
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Custom user event support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'UserEvent application -- send manager event' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-verbose
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Verbose logging support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Verbose logging application' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-waitforring
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Wait for first ring support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'wait for ring application' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-waitforsilence
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Wait for silence/noise support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'wait for silence' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-waituntil
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Sleep support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'support sleeping until the given epoch' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-while
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: While loop support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'a while loop implementation' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-app-zapateller
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Block telemarketers support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'playback the special information tone to get rid of telemarketers' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-bridge-builtin-features
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Bridging features support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'built in bridging features' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-bridge-builtin-interval-features
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Built in bridging interval features support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'built in bridging interval features' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-bridge-holding
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Bridging for storing channels in a bridge support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'bridging technology for storing channels in a bridge' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-bridge-native-rtp
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Native RTP bridging technology module support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'native RTP bridging technology module' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-bridge-simple
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Simple two channel bridging module support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'simple two channel bridging module' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-bridge-softmix
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Multi-party software based channel mixing support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'multi-party software based channel mixing' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-cdr
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Provides CDR support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Call Detail Record' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-cdr-csv
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Provides CDR CSV support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Call Detail Record with CSV support' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-cdr-sqlite3
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 libsqlite3
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Provides CDR SQLITE3 support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Call Detail Record with SQLITE3 support' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-cel-custom
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Customizable CSV CEL backend support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'custom Comma Separated Value CEL records' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-cel-manager
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: AMI CEL backend support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Asterisk channel event records' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-cel-sqlite3-custom
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: SQLite3 custom CEL support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'custom SQLite3 CEL records' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-chan-alsa
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-chan-alsa:alsa-lib
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: ALSA channel support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'the channel chan_alsa' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-chan-bridge-media
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Bridge media channel driver support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'bridge media channel driver' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-chan-console
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-chan-console:portaudio
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Console channel driver support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'cross-platform console channel driver' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-chan-dahdi
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-chan-dahdi:dahdi-tools-libtonezone +PACKAGE_asterisk15-chan-dahdi:kmod-dahdi +PACKAGE_asterisk15-chan-dahdi:libpri @!aarch64
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: DAHDI channel support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'DAHDI channel support' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-chan-iax2
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-chan-iax2:asterisk15-res-timing-timerfd
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: IAX2 channel support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'IAX support' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-chan-mgcp
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: MGCP support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Media Gateway Control Protocol' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-chan-mobile
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-chan-mobile:bluez-libs
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Bluetooth channel support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Bluetooth mobile device channel driver' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-chan-motif
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-chan-motif:asterisk15-res-xmpp
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Jingle channel support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Motif Jingle Channel Driver' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-chan-ooh323
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: H.323 channel support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Objective Systems H.323 channel' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-chan-oss
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: OSS channel support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'the channel chan_oss' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-chan-phone
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Linux telephony API support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'generic Linux telephony interface driver' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-chan-rtp
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: RTP media channel support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'RTP [Multicast and Unicast] media channel' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-chan-sip
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-chan-sip:asterisk15-app-confbridge
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: SIP channel support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'the channel chan_sip' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-chan-skinny
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Skinny channel support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'the channel chan_skinny' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-chan-unistim
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Unistim channel support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'channel driver for the UNISTIM (Unified Networks IP Stimulus) protocol' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-codec-a-mu
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Alaw to ulaw translation support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'translation between alaw and ulaw codecs' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-codec-adpcm
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: ADPCM text support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'ADPCM text ' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-codec-alaw
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Signed linear to alaw translation support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'translation between signed linear and alaw codecs' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-codec-dahdi
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-codec-dahdi:asterisk15-chan-dahdi
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: DAHDI codec support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'DAHDI native transcoding support' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-codec-g722
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: G.722 support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'a high bit rate 48/56/64Kbps ITU standard codec' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-codec-g726
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Signed linear to G.726 translation support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'translation between signed linear and ITU G.726-32kbps codecs' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-codec-gsm
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: linear to GSM translation support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'translate between signed linear and GSM' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-codec-ilbc
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: linear to ILBC translation support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'translate between signed linear and ILBC' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-codec-lpc10
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Linear to LPC10 translation support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'translate between signed linear and LPC10' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-codec-resample
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: resample sLinear audio support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'resample sLinear audio' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-codec-speex
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 @!SOFT_FLOAT +PACKAGE_asterisk15-codec-speex:libspeex +PACKAGE_asterisk15-codec-speex:libspeexdsp
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Speex Coder/Decoder support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'translate between signed linear and Speex' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-codec-ulaw
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Signed linear to ulaw translation support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'translation between signed linear and ulaw codecs' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-curl
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-curl:libcurl
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: CURL support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'CURL support' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-format-g719
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: G.719 support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'ITU G.719 64kbps-only' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-format-g723
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: G.723.1 support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'old-style G.723.1 frame/timestamp format' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-format-g726
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: G.726 support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'support for headerless G.726 16/24/32/40kbps data format' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-format-g729
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: G.729 support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'support for raw headerless G729 data' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-format-gsm
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: GSM format support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'support for GSM format' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-format-h263
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: H263 format support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'support for H264 format' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-format-h264
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: H264 format support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'support for H264 format' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-format-ilbc
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: ILBC format support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'support for ILBC format' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-format-jpeg
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: JPEG image format support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'JPEG file format' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-format-mp3
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 @BROKEN
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: MP3 format support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'support for MP3 format' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-format-ogg-speex
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 @!SOFT_FLOAT +PACKAGE_asterisk15-format-ogg-speex:libogg +PACKAGE_asterisk15-format-ogg-speex:libspeex
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: OGG/Speex audio support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'OGG/Speex streams' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-format-ogg-vorbis
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-format-ogg-vorbis:libvorbis
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: OGG/Vorbis audio support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'OGG/Vorbis streams' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-format-pcm
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: PCM format support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'support for PCM format' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-format-siren14
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Siren14 support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'ITU G.722.1 Annex C Siren14 48kbps-only format' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-format-siren7
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Siren7 support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'ITU G.722.1 Siren7 32kbps-only format' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-format-sln
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Raw slinear format support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'support for raw slinear format' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-format-vox
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: VOX format support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'support for ADPCM vox format' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-format-wav
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: WAV format (8000hz Signed Linear) support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'support for proprietary Microsoft WAV format (8000hz Signed Linear)' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-format-wav-gsm
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: WAV format (Proprietary GSM) support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'support for proprietary Microsoft WAV format (Proprietary GSM)' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-aes
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: AES dialplan functions support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'AES encryption/decryption dialplan functions' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-base64
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: base64 support support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'support of base64 function' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-blacklist
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Blacklist on callerid support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'looking up the callerid number and see if it is blacklisted' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-callcompletion
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Call control configuration function support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'call completion supplementary services implementation' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-channel
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Channel info support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Channel info dialplan function' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-config
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Configuration file variable access support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'a function to retrieve variables from an Asterisk configuration file' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-cut
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: CUT function support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'CUT function' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-db
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Database interaction support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'functions for interaction with the database' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-devstate
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Blinky lights control support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'functions for manually controlled blinky lights' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-dialgroup
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Dialgroup dialplan function support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'dialgroup dialplan function' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-dialplan
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Dialplan context/extension/priority checking functions support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'dialplan group functions check if a dialplan entry exists' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-enum
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: ENUM support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'ENUM' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-env
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Environment functions support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Environment dialplan functions' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-extstate
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Hinted extension state support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'retrieving the state of a hinted extension for dialplan control' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-frame-trace
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Frame trace for internal ast_frame debugging support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'trace internal ast_frames on a channel' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-global
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Global variable support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'global variable dialplan functions' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-groupcount
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Group count support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'for counting number of channels in the specified group' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-hangupcause
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: HANGUPCAUSE related functions support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'functions related to retreiving per-channel hangupcause information' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-holdintercept
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Hold interception dialplan function support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'function that intercepts HOLD frames from channels and raises events' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-iconv
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 @!USE_UCLIBC
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Charset conversion support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'charset conversion' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-jitterbuffer
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Jitter buffer for read side of channel support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'put a jitterbuffer on the read side of a channel' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-lock
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Dialplan mutexes support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'dialplan mutexes' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-math
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Math functions support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Math functions' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-md5
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: MD5 digest dialplan functions support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'MD5 digest related dialplan functions' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-module
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Simple module check function support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Simple module check function' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-periodic-hook
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-func-periodic-hook:asterisk15-app-chanspy +PACKAGE_asterisk15-func-periodic-hook:asterisk15-func-cut +PACKAGE_asterisk15-func-periodic-hook:asterisk15-func-groupcount +PACKAGE_asterisk15-func-periodic-hook:asterisk15-func-uri
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Periodic dialplan hooks support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Execute a periodic dialplan hook into the audio of a call' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-pitchshift
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Audio effects dialplan functions support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'pitch shift audio effect' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-presencestate
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Hinted presence state support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Gets or sets a presence state in the dialplan' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-rand
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: RAND dialplan function support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'RAND dialplan function' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-realtime
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: REALTIME dialplan function support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'REALTIME dialplan function' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-sha1
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: SHA-1 computation dialplan function support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'SHA1 digest related dialplan functions' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-shell
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Shell support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'support for shell execution' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-sorcery
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Get a field from a sorcery object support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'get a field from a sorcery object' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-speex
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 @!SOFT_FLOAT +PACKAGE_asterisk15-func-speex:libspeex +PACKAGE_asterisk15-func-speex:libspeexdsp
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Noise reduction and AGC support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'noise reduction and automatic gain control' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-sprintf
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: SPRINTF dialplan function support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'string manipulation dialplan functions' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-srv
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: SRV functions support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'SRV related dialplan functions' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-sysinfo
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: System information related functions support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'SYSINFO function to return various system data' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-talkdetect
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Talk detection dialplan function support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'function that raises events when talking is detected on a channel' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-uri
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: URI encoding and decoding support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Encodes and decodes URI-safe strings' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-version
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Get Asterisk version/build info support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'return the current version strings' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-vmcount
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: vmcount dialplan support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'a vmcount dialplan function' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-func-volume
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Technology independent volume control support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'technology independent volume control' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-odbc
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-odbc:libpthread +PACKAGE_asterisk15-odbc:libc +PACKAGE_asterisk15-odbc:unixodbc
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: ODBC support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'ODBC support' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-pbx-ael
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-pbx-ael:asterisk15-res-ael-share
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Asterisk Extension Logic support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'support for symbolic Asterisk Extension Logic' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-pbx-dundi
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Dundi support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'provides Dundi Lookup service for Asterisk' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-pbx-loopback
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Loopback switch support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'loopback PBX module' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-pbx-lua
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-pbx-lua:liblua
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Lua support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'provides Lua resources for Asterisk' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-pbx-realtime
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Realtime Switch support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'realtime switch support' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-pbx-spool
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Call Spool support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'outgoing call spool support' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-pgsql
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-pgsql:libpq
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: PostgreSQL support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'PostgreSQL support' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-pjsip
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-pjsip:asterisk15-res-sorcery +PACKAGE_asterisk15-pjsip:asterisk15-res-pjproject +PACKAGE_asterisk15-pjsip:libpjsip +PACKAGE_asterisk15-pjsip:libpjmedia +PACKAGE_asterisk15-pjsip:libpjnath +PACKAGE_asterisk15-pjsip:libpjsip-simple +PACKAGE_asterisk15-pjsip:libpjsip-ua +PACKAGE_asterisk15-pjsip:libpjsua +PACKAGE_asterisk15-pjsip:libpjsua2
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: pjsip channel support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'the channel pjsip' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-adsi
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Provide ADSI support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Analog Display Services Interface capability' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-ael-share
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Shareable AEL code support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'support for shareable AEL code mainly between internal and external modules' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-agi
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-agi:asterisk15-res-speech
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Asterisk Gateway Interface support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Support for the Asterisk Gateway Interface extension' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-ari
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-ari:asterisk15-res-http-websocket
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Asterisk RESTful interface support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'HTTP binding for the Stasis API' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-ari-applications
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-ari-applications:asterisk15-res-ari +PACKAGE_asterisk15-res-ari-applications:asterisk15-res-ari-model +PACKAGE_asterisk15-res-ari-applications:asterisk15-res-stasis
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: RESTful Stasis application resources support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'RESTful API module - Stasis application resources' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-ari-asterisk
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-ari-asterisk:asterisk15-res-ari +PACKAGE_asterisk15-res-ari-asterisk:asterisk15-res-ari-model +PACKAGE_asterisk15-res-ari-asterisk:asterisk15-res-stasis
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: RESTful Asterisk resources support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'RESTful API module - Asterisk resources' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-ari-bridges
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-ari-bridges:asterisk15-res-ari +PACKAGE_asterisk15-res-ari-bridges:asterisk15-res-ari-model +PACKAGE_asterisk15-res-ari-bridges:asterisk15-res-stasis-playback
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: RESTful bridge resources support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'RESTful API module - bridge resources' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-ari-channels
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-ari-channels:asterisk15-res-ari +PACKAGE_asterisk15-res-ari-channels:asterisk15-res-ari-model +PACKAGE_asterisk15-res-ari-channels:asterisk15-res-stasis-answer +PACKAGE_asterisk15-res-ari-channels:asterisk15-res-stasis-playback +PACKAGE_asterisk15-res-ari-channels:asterisk15-res-stasis-snoop
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: RESTful channel resources support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'RESTful API module - channel resources' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-ari-device-states
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-ari-device-states:asterisk15-res-ari +PACKAGE_asterisk15-res-ari-device-states:asterisk15-res-ari-model +PACKAGE_asterisk15-res-ari-device-states:asterisk15-res-stasis-device-state
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: RESTful device state resources support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'RESTful API module - device state resources' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-ari-endpoints
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-ari-endpoints:asterisk15-res-ari +PACKAGE_asterisk15-res-ari-endpoints:asterisk15-res-ari-model +PACKAGE_asterisk15-res-ari-endpoints:asterisk15-res-stasis
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: RESTful endpoint resources support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'RESTful API module - endpoint resources' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-ari-events
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-ari-events:asterisk15-res-ari +PACKAGE_asterisk15-res-ari-events:asterisk15-res-ari-model +PACKAGE_asterisk15-res-ari-events:asterisk15-res-stasis
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: RESTful WebSocket resource support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'RESTful API module - WebSocket resource' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-ari-mailboxes
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-ari-mailboxes:asterisk15-res-ari +PACKAGE_asterisk15-res-ari-mailboxes:asterisk15-res-ari-model +PACKAGE_asterisk15-res-ari-mailboxes:asterisk15-res-stasis-mailbox
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: RESTful mailboxes resources support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'RESTful API module - mailboxes resources' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-ari-model
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: ARI model validators support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'ARI model validators' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-ari-playbacks
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-ari-playbacks:asterisk15-res-ari +PACKAGE_asterisk15-res-ari-playbacks:asterisk15-res-ari-model +PACKAGE_asterisk15-res-ari-playbacks:asterisk15-res-stasis-playback
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: RESTful playback control resources support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'RESTful API module - playback control resources' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-ari-recordings
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-ari-recordings:asterisk15-res-ari +PACKAGE_asterisk15-res-ari-recordings:asterisk15-res-ari-model +PACKAGE_asterisk15-res-ari-recordings:asterisk15-res-stasis-recording
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: RESTful recording resources support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'RESTful API module - recording resources' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-ari-sounds
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-ari-sounds:asterisk15-res-ari +PACKAGE_asterisk15-res-ari-sounds:asterisk15-res-ari-model +PACKAGE_asterisk15-res-ari-sounds:asterisk15-res-stasis
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: RESTful sound resources support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'RESTful API module - sound resources' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-calendar
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Calendar API support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'the calendar API' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-calendar-caldav
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-calendar-caldav:asterisk15-res-calendar +PACKAGE_asterisk15-res-calendar-caldav:libical +PACKAGE_asterisk15-res-calendar-caldav:libneon +PACKAGE_asterisk15-res-calendar-caldav:libxml2
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: CalDAV calendar support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'CalDAV calendar integration' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-calendar-ews
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-calendar-ews:asterisk15-res-calendar +PACKAGE_asterisk15-res-calendar-ews:libneon
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: EWS calendar support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'MS Exchange Web Service calendar integration' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-calendar-exchange
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-calendar-exchange:asterisk15-res-calendar +PACKAGE_asterisk15-res-calendar-exchange:libical +PACKAGE_asterisk15-res-calendar-exchange:libiksemel +PACKAGE_asterisk15-res-calendar-exchange:libneon
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Exchange calendar support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'MS Exchange calendar integration' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-calendar-icalendar
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-calendar-icalendar:asterisk15-res-calendar +PACKAGE_asterisk15-res-calendar-icalendar:libical +PACKAGE_asterisk15-res-calendar-icalendar:libneon
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: iCalendar calendar support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'iCalendar calendar integration' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-chan-stats
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-chan-stats:asterisk15-res-statsd
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: statsd channel stats support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'example of how to subscribe to Stasis events' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-clialiases
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: CLI aliases support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'CLI aliases' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-clioriginate
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Calls via CLI support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Originate calls via the CLI' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-config-ldap
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-config-ldap:libopenldap
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: LDAP realtime interface support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'LDAP plugin for portable configuration engine' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-config-mysql
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-config-mysql:libmysqlclient
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: MySQL CDR backend support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'MySQL CDR backend' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-config-sqlite3
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: SQLite 3 realtime config engine support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'SQLite 3 configuration engine' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-convert
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: File format conversion CLI command support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'file format conversion CLI command using Asterisk formats and translators' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-endpoint-stats
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-endpoint-stats:asterisk15-res-statsd
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Endpoint statistics support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'statsd endpoint stats' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-hep
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: HEPv3 API support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Routines for integration with Homer using HEPv3' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-hep-pjsip
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-hep-pjsip:asterisk15-res-hep +PACKAGE_asterisk15-res-hep-pjsip:asterisk15-pjsip
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: PJSIP HEPv3 Logger support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'PJSIP logging with Homer' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-hep-rtcp
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-hep-rtcp:asterisk15-res-hep
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: RTCP HEPv3 Logger support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'RTCP logging with Homer' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-fax-spandsp
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-fax-spandsp:asterisk15-res-fax +PACKAGE_asterisk15-res-fax-spandsp:libspandsp +PACKAGE_asterisk15-res-fax-spandsp:libtiff
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Spandsp T.38 and G.711 support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Spandsp T.38 and G.711 FAX Resource' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-fax
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-fax:asterisk15-res-timing-pthread
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: FAX modules support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Generic FAX resource for FAX technology resource modules' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-format-attr-celt
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: CELT format attribute module support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'CELT format attribute interface' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-format-attr-g729
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: G.729 format attribute module support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'G.729 format attribute interface' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-format-attr-h263
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: H.263 format attribute module support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'H.263 format attribute interface' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-format-attr-h264
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: H.264 format attribute module support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'H.264 format attribute interface' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-format-attr-ilbc
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: ILBC format attribute module support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'ILBC format attribute interface' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-format-attr-opus
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Opus format attribute module support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Opus format attribute interface' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-format-attr-silk
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: SILK format attribute module support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'SILK format attribute interface' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-format-attr-siren14
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Siren14 format attribute module support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Siren14 format attribute interface' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-format-attr-siren7
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Siren7 format attribute module support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Siren7 format attribute interface' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-format-attr-vp8
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: VP8 format attribute module support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'VP8 format attribute interface' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-http-media-cache
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-http-media-cache:asterisk15-curl
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: HTTP media cache backend support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'HTTP backend for the core media cache' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-http-websocket
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: HTTP websocket support support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'WebSocket support for the Asterisk internal HTTP server' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-limit
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Resource limits support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'resource limits' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-manager-devicestate
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Device state topic forwarder support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'list the current known device states' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-manager-presencestate
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Presence state topic forwarder support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'list the current known presence states' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-monitor
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: PBX channel monitoring support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'call monitoring resource' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-musiconhold
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: MOH support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Music On Hold support' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-mutestream
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Mute audio stream resources support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'MUTESTREAM audiohooks' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-mwi-external
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Core external MWI resource support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'core external MWI resource' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-mwi-external-ami
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-mwi-external-ami:asterisk15-res-mwi-external
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: AMI for external MWI support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'AMI wrapper for external MWI' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-parking
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-parking:asterisk15-bridge-holding
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Phone Parking support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Phone Parking application' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-phoneprov
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Phone Provisioning support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Phone provisioning application for the asterisk internal http server' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-pjsip-phoneprov
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-pjsip-phoneprov:asterisk15-pjsip +PACKAGE_asterisk15-res-pjsip-phoneprov:asterisk15-res-phoneprov
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: PJSIP Phone Provisioning support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'PJSIP Phone Provisioning' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-pjproject
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-pjproject:libpj +PACKAGE_asterisk15-res-pjproject:libpjlib-util +PACKAGE_asterisk15-res-pjproject:libpjmedia +PACKAGE_asterisk15-res-pjproject:libpjmedia +PACKAGE_asterisk15-res-pjproject:libpjnath +PACKAGE_asterisk15-res-pjproject:libpjsip-simple +PACKAGE_asterisk15-res-pjproject:libpjsip-ua +PACKAGE_asterisk15-res-pjproject:libpjsip +PACKAGE_asterisk15-res-pjproject:libpjsua +PACKAGE_asterisk15-res-pjproject:libpjsua2 +PACKAGE_asterisk15-res-pjproject:libsrtp2
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Bridge PJPROJECT to Asterisk logging support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for '' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-pktccops
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: PktcCOPS manager for MGCP support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'PacketCable MGCP variation / NCS' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-realtime
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: RealTime CLI support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'RealTime CLI' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-resolver-unbound
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-resolver-unbound:libunbound
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Unbound DNS resolver support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Unbound DNS resolver' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-rtp-asterisk
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-rtp-asterisk:libpjsip +PACKAGE_asterisk15-res-rtp-asterisk:libpjmedia +PACKAGE_asterisk15-res-rtp-asterisk:libpjnath +PACKAGE_asterisk15-res-rtp-asterisk:libpjsip-simple +PACKAGE_asterisk15-res-rtp-asterisk:libpjsip-ua +PACKAGE_asterisk15-res-rtp-asterisk:libpjsua +PACKAGE_asterisk15-res-rtp-asterisk:libpjsua2
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: RTP stack support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Supports RTP and RTCP with Symmetric RTP support for NAT traversal' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-rtp-multicast
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: RTP multicast engine support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Multicast RTP Engine' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-security-log
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Security event logging support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'security event logging' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-smdi
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Provide SMDI support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Simple Message Desk Interface capability' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-snmp
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-snmp:libnetsnmp
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: SNMP [Sub]Agent for Asterisk support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'SNMP Agent / SubAgent' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-sorcery
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Sorcery data layer support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Sorcery backend modules for data access intended for using realtime as backend' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-sorcery-memory-cache
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Sorcery memory cache object wizard support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'sorcery memory cache object wizard' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-speech
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Speech Recognition API support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Support for the Asterisk Generic Speech Recognition API' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-srtp
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-srtp:libsrtp2
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: SRTP Support support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Secure RTP connection' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-stasis
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Stasis application support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Stasis application' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-stasis-answer
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-stasis-answer:asterisk15-res-stasis
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Stasis application answer support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Stasis application control' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-stasis-device-state
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-stasis-device-state:asterisk15-res-stasis
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Stasis application device state support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Stasis application control' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-stasis-mailbox
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-stasis-mailbox:asterisk15-res-stasis +PACKAGE_asterisk15-res-stasis-mailbox:asterisk15-res-mwi-external
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Stasis application mailbox support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Stasis application control' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-stasis-playback
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-stasis-playback:asterisk15-res-stasis-recording
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Stasis application playback support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'res_stasis playback' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-stasis-recording
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-stasis-recording:asterisk15-res-stasis
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Stasis application recording support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'res_stasis recording' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-stasis-snoop
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-stasis-snoop:asterisk15-res-stasis-recording
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Stasis application snoop support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Stasis application snoop control' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-statsd
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: statsd client support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'publishing to a statsd server' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-stun-monitor
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: STUN monitoring support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'resource STUN Monitor' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-timing-dahdi
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-timing-dahdi:asterisk15-chan-dahdi
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: DAHDI Timing Interface support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'DAHDI timing interface' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-timing-pthread
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: pthread Timing Interface support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'POSIX pthreads Timing Interface' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-timing-timerfd
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Timerfd Timing Interface support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'Timing interface provided by Linux kernel' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-res-xmpp
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-res-xmpp:libiksemel +PACKAGE_asterisk15-res-xmpp:libopenssl
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: XMPP client and component module support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'reference module for interfacting Asterisk directly as a client or component with XMPP server' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-voicemail
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-voicemail:asterisk15-res-adsi +PACKAGE_asterisk15-voicemail:asterisk15-res-smdi
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: Voicemail support
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: This package provides support for 'voicemail related modules' in Asterisk.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-util-aelparse
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-util-aelparse:asterisk15-pbx-ael
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: aelparse utility
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: Check extensions.ael file.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-util-astcanary
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: astcanary utility
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: Assures Asterisk no threads have gone missing.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-util-astdb2sqlite3
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: astdb2sqlite3 utility
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: Convert astdb to SQLite 3.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-util-astdb2bdb
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: astdb2bdb utility
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: Convert astdb back to Berkeley DB 1.86.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-util-check-expr
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: check_expr utility
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: Expression checker [older version].
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-util-check-expr2
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: check_expr2 utility
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: Expression checker [newer version].
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-util-conf2ael
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-util-conf2ael:asterisk15-pbx-ael
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: conf2ael utility
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: Convert .conf to .ael.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-util-muted
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: muted utility
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: Listens for AMI events. Mutes soundcard during call.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-util-smsq
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15 +PACKAGE_asterisk15-util-smsq:libpopt
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: smsq utility
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: Send messages from command line.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-util-stereorize
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: stereorize utility
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: Merge two mono WAV-files to one stereo WAV-file.
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@

Package: asterisk15-util-streamplayer
Submenu: Telephony
Version: 15.3.0-2
Depends: +libc +GCC_LIBSSP:libssp +USE_GLIBC:librt +USE_GLIBC:libpthread asterisk15
Conflicts: 
Menu-Depends: 
Provides: 
Section: net
Category: Network
Repository: telephony
Title: streamplayer utility
Maintainer: Jiri Slachta <jiri@slachta.eu>
Source: asterisk-15.3.0.tar.gz
License: GPL-2.0
LicenseFiles: COPYING LICENSE
Type: ipkg
Description: A utility for reading from a raw TCP stream [MOH source].
http://www.asterisk.org/
Jiri Slachta <jiri@slachta.eu>
@@



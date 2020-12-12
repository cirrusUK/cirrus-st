# st version = cirrus-st
VERSION = 0.8.4

# Customize below to fit your system

# paths
PREFIX = /home/cirrus/.local
MANPREFIX = $(PREFIX)/share/man

X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

PKG_CONFIG = pkg-config

# includes and libs
INCS = -I$(X11INC) \
       `$(PKG_CONFIG) --cflags fontconfig` \
       `$(PKG_CONFIG) --cflags freetype2` \
       `$(PKG_CONFIG) --cflags harfbuzz`
LIBS = -L$(X11LIB) -lm -lrt -lX11 -lutil -lXft -lXrender\
       `$(PKG_CONFIG) --libs fontconfig` \
       `$(PKG_CONFIG) --libs freetype2` \
       `$(PKG_CONFIG) --libs harfbuzz`

# flags
STCPPFLAGS = -DVERSION=\"$(VERSION)\" -D_XOPEN_SOURCE=600
STCFLAGS = $(INCS) $(STCPPFLAGS) $(CPPFLAGS) $(CFLAGS)
STLDFLAGS = $(LIBS) $(LDFLAGS)

# OpenBSD:
#CPPFLAGS = -DVERSION=\"$(VERSION)\" -D_XOPEN_SOURCE=600 -D_BSD_SOURCE
#LIBS = -L$(X11LIB) -lm -lX11 -lutil -lXft \
#       `$(PKG_CONFIG) --libs fontconfig` \
#       `$(PKG_CONFIG) --libs freetype2`

# compiler and linker
# CC = c99


##### PATCHES ####
# File: st-alpha-0.8.2.diff
# File: st-externalpipe-0.8.4.diff
# File: st-font2-20190416-ba72400.diff
# File: st-ligatures-alpha-scrollback-20200430-0.8.3.diff
# File: st-scrollback-20200419-72e3f6c.diff
# File: st-scrollback-mouse-20191024-a2c479c.diff
# File: st-scrollback-mouse-altscreen-20200416-5703aa0.diff
# File: st-vertcenter-20180320-6ac8c8a.diff
# File: st-workingdir-20200317-51e19ea.diff
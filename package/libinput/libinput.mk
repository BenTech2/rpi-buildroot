################################################################################
#
# libinput
#
################################################################################

LIBINPUT_VERSION = 1.1.5
LIBINPUT_SOURCE = libinput-$(LIBINPUT_VERSION).tar.xz
LIBINPUT_SITE = http://www.freedesktop.org/software/libinput
LIBINPUT_LICENSE = MIT
LIBINPUT_LICENSE_FILES = COPYING

LIBINPUT_DEPENDENCIES = host-pkgconf libevdev mtdev udev
LIBINPUT_INSTALL_STAGING = YES

# Tests need fork, so just disable them everywhere.
LIBINPUT_CONF_OPTS = --disable-tests

$(eval $(autotools-package))

#
# libcedarx
#

LIBCEDARX_VERSION = 0.1
LIBCEDARX_SOURCE = libcedarx-$(LIBCEDARX_VERSION).tar.gz
LIBCEDARX_SITE = http://github.com/chickli/libcedarx/archive
LIBCEDARX_INSTALL_STAGING = YES
LIBCEDARX_INSTALL_TARGET = YES
LIBCEDARX__AUTORECONF = YES

define LIBCEDARX_AUTOCONF_CMD
    cd ${LIBCEDARX_DIR};./autogen.sh
endef

LIBCEDARX_POST_EXTRACT_HOOKS += LIBCEDARX_AUTOCONF_CMD

$(eval $(autotools-package))

#
# libcedarx
#

LIBCEDARX_VERSION = master
LIBCEDARX_SITE = $(call github,willswang,libcedarx,$(FOO_VERSION))
LIBCEDARX_INSTALL_STAGING = YES
LIBCEDARX_INSTALL_TARGET = YES

$(eval $(autotools-package))

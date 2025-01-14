
##############################################################
#
# AESD-CHAR-AND-SERVER
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_CHAR_AND_SERVER_VERSION = f78aa3628734a68dfc38efd994f781b24ec0710e
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_CHAR_AND_SERVER_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-jfarnham96.git
AESD_CHAR_AND_SERVER_SITE_METHOD = git
AESD_CHAR_AND_SERVER_GIT_SUBMODULES = YES
AESD_CHAR_AND_SERVER_MODULE_SUBDIRS = aesd-char-driver

define AESD_CHAR_AND_SERVER_INSTALL_TARGET_CMDS
    $(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
    $(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))

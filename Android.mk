LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),kylin_p2)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif

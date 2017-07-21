LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_STATIC_LIBRARIES :=
LOCAL_MODULE := pppoe
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE_TAGS := eng
#LOCAL_C_INCLUDES += $(LOCAL_PATH)/src
LOCAL_CFLAGS += '-DNDEBUG' \
	'-DVERSION="3.12"' \
	'-DPPPD_PATH="/system/bin/pppd"'
LOCAL_SRC_FILES := pppoe.c if.c debug.c common.c ppp.c discovery.c
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
include $(call all-makefiles-under,$(LOCAL_PATH))
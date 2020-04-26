###################################

include $(MakePath)/trait/freestanding.mk
include $(MakePath)/trait/ps4_musl.mk
include $(MakePath)/trait/pie.mk
include $(MakePath)/trait/link.mk

###################################

include $(MakePath)/trait/kernel_execute.mk
include $(MakePath)/trait/common.mk
#include $(MakePath)/trait/adaptive.mk
include $(MakePath)/trait/sce_musl.mk
include $(MakePath)/trait/kernel.mk
include $(MakePath)/trait/base_musl.mk
#include $(MakePath)/trait/system_call_rop_0x9263FFFF8.mk
include $(MakePath)/trait/system_call_standard.mk

###################################

include $(MakePath)/trait/all_and_clean.mk

###################################

target ?= ps4_lib_no_all
BuildPath := $(PS4SDKSRC)/build
OutPath := $(PS4SDKSRC)/lib

include $(PS4SDKSRC)/make/ps4sdk.mk

define generateCObject
$(patsubst %,$(BuildPath)/%,$(patsubst %.c,%.c.o,$(1))): $(1)
	$$(dirp)
	$$(compile)

endef

define generateSObject
$(patsubst %,$(BuildPath)/%,$(patsubst %.s,%.s.o,$(1))): $(1)
	$$(dirp)
	$$(assemble)

endef

define generateTarget
$(foreach i,$(call findwildcard, $(1)source/, *.c),$(call generateCObject,$(i)))
$(foreach i,$(call findwildcard, $(1)source/, *.s),$(call generateSObject,$(i)))

$(OutPath)/libPs4_common_$(subst /,_,$(patsubst %/,%,$(1))).a: $(patsubst %,$(BuildPath)/%, $(patsubst %.c,%.c.o,$(call findwildcard, $(1)source/, *.c)) $(patsubst %.s,%.s.o,$(call findwildcard, $(1)source/, *.s)))
	$$(dirp)
	$$(archive)
all:: $(OutPath)/libPs4_common_$(subst /,_,$(patsubst %/,%,$(1))).a
clean::
	rm -fR $(BuildPath)/$(subst /,,$(strip $(1))) $(OutPath)/libPs4_common_$(subst /,_,$(patsubst %/,%,$(1))).a

endef

define generateTargets
$(foreach i,$(1),$(call generateTarget,$(i)))

endef

$(eval $(call generateTargets,$(wildcard */)))

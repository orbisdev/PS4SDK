###################################

ifndef Ps4Sdk
ifdef ps4sdk
Ps4Sdk := $(ps4sdk)
endif
ifdef PS4SDK
Ps4Sdk := $(PS4SDK)
endif
ifndef Ps4Sdk
$(error Neither PS4SDK, Ps4Sdk nor ps4sdk set)
endif
endif

###################################

AssemblerFlags += -I$(Ps4Sdk)/include
CompilerFlags += -D__PS4__ -I$(Ps4Sdk)/include -I $(Ps4Sdk)/include/sce
CompilerFlagsCpp += -D__PS4__ -I$(Ps4Sdk)/include -I $(Ps4Sdk)/include/sce -I$(Ps4Sdk)/include/c++ -I$(Ps4Sdk)/include/c++/tr1
LinkerFlags += -L$(Ps4Sdk)/lib

###################################

CrtFile ?= $(Ps4Sdk)/crt0musl.s $(Ps4Sdk)/git/repositorios/musl/lib/Scrt1.o $(Ps4Sdk)/git/repositorios/musl/lib/crti.o $(Ps4Sdk)/git/repositorios/musl/lib/crtn.o  
#link = $(Linker) $(Ps4Sdk)/crt0.s $? $(LinkerFlags) $(Libraries) -o $@

###################################

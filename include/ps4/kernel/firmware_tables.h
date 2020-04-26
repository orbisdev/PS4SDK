#pragma once


typedef struct sym_t
{
	const char *name;
	int offset;
} sym_t;

#include <ps4/kernel/405_kernel_sym.h>
#include <ps4/kernel/505_kernel_sym.h>

//add other kernels follow this syntax
# CXX = "clang++"
CXX = "g++"
CPPARAMS = -g -std=gnu++14 -fdiagnostics-color=always -fdiagnostics-show-labels -Wall 
DEBUG = #-g

ifeq ($(CXX), clang++)
	CPPARAMS += -Wgcc-compat -Woption -fdiagnostics-show-option -fdiagnostics-show-category -Werror
endif

all:
	$(CXX) $(CPPARAMS) $(DEBUG) BmpConvert.cpp -o BmpConvert
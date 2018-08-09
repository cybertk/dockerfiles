#!/bin/sh

# Case 1: ndk-build should work
ndk-build --version

# Case 2: NDK_ROOT should be defined

[[ -n $NDK_ROOT ]] || false

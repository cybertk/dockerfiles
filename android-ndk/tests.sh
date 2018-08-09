#!/bin/sh

set -e

echo "==> Case 1: ndk-build should work"
ndk-build --version

echo "==> Case 2: NDK_ROOT should be defined"
echo NDK_ROOT=$NDK_ROOT
[[ -n $NDK_ROOT ]] || false

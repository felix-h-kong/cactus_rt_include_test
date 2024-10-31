#!/usr/bin/sh

cmake -Bbuild #-DENABLE_TRACING=ON -DCMAKE_BUILD_TYPE=RelWithDebugInfo
cmake --build build -j
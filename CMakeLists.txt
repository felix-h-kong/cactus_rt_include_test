cmake_minimum_required(VERSION 3.10)
project(cactus-rt-include-test)

set(CACTUS_RT_ENABLE_TRACING ON CACHE BOOL "Enable tracing in cactus_rt" FORCE)

include(FetchContent)
FetchContent_Declare(
  cactus_rt
  GIT_REPOSITORY https://github.com/cactusdynamics/cactus-rt.git
  GIT_TAG        65572dd2a305a959b64ef34978dbc1cb3e4135ba
)
FetchContent_MakeAvailable(cactus_rt)


add_executable(rt_tracing_example src/rt_tracing_example.cpp)
target_link_libraries(rt_tracing_example PRIVATE cactus_rt)

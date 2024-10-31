cmake_minimum_required(VERSION 3.10)
project(cactus-rt-include-test)

# # add_compile_definitions(CACTUS_RT_TRACING_ENABLED=1)
# set(ENABLE_TRACING ON CACHE BOOL "Enable tracing in cactus_rt" FORCE)

include(FetchContent)
FetchContent_Declare(
  cactus_rt
  GIT_REPOSITORY https://github.com/cactusdynamics/cactus-rt.git
  GIT_TAG        ...
)
FetchContent_MakeAvailable(cactus_rt)


add_executable(rt_tracing_example src/rt_tracing_example.cpp)
target_link_libraries(rt_tracing_example PRIVATE cactus_rt)

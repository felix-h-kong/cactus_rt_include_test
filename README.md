# cactus_rt_include_test
An example for how you include `cactus_rt`. Empahsizes configuration to get perfetto files out, which may not be enabled by default.

# Build
```
rm -rf build
./build.sh
```

# Run
```
./build/rt_tracing_example
```
You should get two `.perfetto` files out:
```
$ ls build | grep perfetto
data1.perfetto
data2.perfetto
```
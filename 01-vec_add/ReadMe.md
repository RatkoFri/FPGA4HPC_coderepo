# Exercise 1: vector sum

## Goal:

The purpose of this exercise is to run our first application, which uses an FPGA to compute the sum of two vectors.

## Instructions:

- move to subdirectory:
```console
$ cd 01-vec_add/
```

### SLING NSC cluster: 

- build the application  

```console
$ ./compile.sh sw_emu # or hw_emu for hw emulation
```

- Run the application:
```console
$ ./run.sh sw_emu #or hw_emu for hw emulation
```

- Run the application on the FPGA card (requires a kernel built with `./compile.sh hw`):
```console
$ cd build
$ ./host xilinx_u250_gen3x16_xdma_shell_4_1 vadd.xclbin
$ cd ..
```
- Analyze the results 

```console
$ . ../00-connecting/setup_env.sh
$ vitis_analyzer ./build/
```

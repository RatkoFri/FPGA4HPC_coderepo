# Exercise 1: Matrix-vector multiplication - Naive approach

## Goal:

The purpose of this exercise is to implement a simple matrix-vector multiplication kernel on the FPGA. 

## Instructions:

- move to subdirectory:
```console
$ cd 02-matv_mul-naive
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
- Analyze the results 

```console
$ . ../00-connecting/setup_env.sh
$ vitis_analyzer ./build/
```

# Exercise 1: vector sum[^1]

## Goal:

The purpose of this exercise is to run our first application, which uses an FPGA to compute the sum of two vectors.

## Instructions:

- move to subdirectory:
```console
$ cd 01-vec_add/
```
- build the application  

```console
$ ./compile.sh sw_emu # or hw_emu for hw emulation
```

- Run the application:
```console
$ ./run.sh sw_emu #or hw_emu for hw emulation
```

- Analyze the results:

On NSC cluster: 

```console
. /ceph/grid/software/xilinx/tools/Vitis/2023.1/settings64.sh
vitis_analyzer ./build/
```
On IT4I CS cluster: 

```console
. /tools/Xilinx/Vitis/2023.1/settings64.sh
vitis_analyzer ./build/
```
___

[^1]: 
 &copy; Nejc Ilc and Ratko Pilipović, University of Ljubljana, Faculty of Computer and Information Science. 
 The materials are published under the license [Attribution-NonCommercial-ShareAlike 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/) International](https://creativecommons.org/licenses/by-nc-sa/4.0/).

___

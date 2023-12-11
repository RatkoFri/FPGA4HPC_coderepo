# Exercise 1: Matrix-vector multiplication - Naive approach[^1]

## Goal:

The purpose of this exercise is to implement a simple matrix-vector multiplication kernel on the FPGA. 

## Instructions:

- move to subdirectory:
```console
$ cd 02-matv_mul-naive
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

On SLING NSC cluster: 

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
 The materials are published under license [Attribution-NonCommercial-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-nc-sa/4.0/).

___

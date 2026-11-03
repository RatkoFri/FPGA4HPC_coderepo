# Exercise 1: Matrix-vector multiplication - Naive approach[^1]

## Goal:

The purpose of this exercise is to adapt the host code to employ multiple compute units. 

## Instructions:

- move to subdirectory:
```console
$ cd 05-matv_mul-hostOpt
```
- build the host application  

```console
$ ./compile_host.sh
```

- build the kernel
```console
$ ./compile_kernel.sh sw_emu
```console

- Run the application:
```console
$ ./run.sh sw_emu
```

- Analyze the results:

On SLING NSC cluster: 

```console
. ../00-connecting/setup_env.sh
vitis_analyzer ./build/
```
___

[^1]: 
 &copy; Davor Sluga and Ratko Pilipović, University of Ljubljana, Faculty of Computer and Information Science. 
 The materials are published under the license [Attribution-NonCommercial-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-nc-sa/4.0/).

___

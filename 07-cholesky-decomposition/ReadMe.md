# Exercise 1: Matrix-vector multiplication - Naive approach[^1]

## Goal:

The purpose of this exercise is to implement Cholesky decomposition on FPGAs. 

## Instructions:

- move to subdirectory:
```console
$ cd 07-cholesky-decomposition
```
- build the application 

```console
$ ./compile.sh sw_emu # or hw_emu for hw emulation
```console

- Run the application:
```console
$ ./run.sh sw_emu #or hw_emu for hw emulation
```

- Analyze the results:

On SLING NSC cluster: 

```console
. ../00-connecting/setup_env.sh
vitis_analyzer ./build/
```

- Run the Vitis HLS:

```console
./run_hls.sh
```

- After a successful synthesis, you can locate the results in the file.

```sh linenums="1"
./build/proj-CHO-DEC/solution/syn/report/cynth.rpt 
```



___

[^1]: 
 &copy; Davor Sluga and Ratko Pilipović, University of Ljubljana, Faculty of Computer and Information Science. 
 The materials are published under the license [Attribution-NonCommercial-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-nc-sa/4.0/).

___

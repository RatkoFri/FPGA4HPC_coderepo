# Using Vitis HLS and analyzing reports[^1]


## Goal:
In this exercise, we will utilize Vitis HLS to synthesize the kernel. To facilitate this process, we have prepared the ***run_hls.tcl*** script in the ***src*** directory, which establishes the environment and initiates synthesis. 

## Instructions: 

- move to subdirectory:
```console
$ cd 04-matv_mul-hls
```

- To execute the Tcl script, run the following shell script.
```sh linenums="1"
./run_hls.sh
```

- After a successful synthesis, you can locate the results in the file.
```sh linenums="1"
./build/project/solution/syn/report/cynth.rpt 
```

___

[^1]: 
 &copy; Nejc Ilc and Ratko Pilipović, University of Ljubljana, Faculty of Computer and Information Science. 
 The materials are published under the ßlicense [Attribution-NonCommercial-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-nc-sa/4.0/).

___

# Setting up the environment[^1]


## Connecting to SLING NSC cluster

- Open the terminal and connect to the cluster using SSH

```console
$ ssh -X username-ID@nsc-login2.ijs.si
```

- Allocate the node with FPGA 

```console
$ salloc -N1 -c2 -C fpga --reservation=fpga --time=01:00:00
```

- Connect to it

```console
$ ssh -X nsc-vfp001
```

- Find the FPGA devices
```
$ . ./00-connecting/setup_env.sh  # from the repository root
$ . /opt/xilinx/xrt/setup.sh
$ xbutil examine 
```


## Where the projects are built

The compile and run scripts do not build in your home directory. They copy the exercise sources to `/projects/fpga-training/$USER/<exercise>/`, build and run there, and copy the `build` directory back to the exercise directory when they finish. You can choose another location by setting `WORK_ROOT` before running a script.

## Batch scripts 


### SLING NSC cluster

- Open the terminal and connect to the cluster using SSH

```console
$ sbatch -c2 -C fpga --reservation=fpga ./sbatch_script.sh 
```


___

[^1]: 
 &copy; Davor Sluga and Ratko Pilipović, University of Ljubljana, Faculty of Computer and Information Science. 
 The materials are published under the license [Attribution-NonCommercial-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-nc-sa/4.0/).

___

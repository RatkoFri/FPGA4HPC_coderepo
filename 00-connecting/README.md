# Setting up the environment[^1]


## Connecting to SLING NSC cluster

- Open the terminal and connect to the cluster using SSH

```console
$ ssh -o PubkeyAuthentication=no -o PreferredAuthentications=password -X user-id@nsc-login3.ijs.si
```



- Connect to the FPGA node (nsc-vfp001) using SSH

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

The compile scripts (`compile*.sh`, `run_hls.sh`) do not build in your home directory. They copy the exercise sources to `/projects/fpga-training/$USER/<exercise>/`, build there, and copy the `build` directory back to the exercise directory when they finish. After a successful copy, the work directory is deleted. The `run.sh` scripts run the application directly in the exercise's `build` directory. You can choose another location by setting `WORK_ROOT` before running a script.

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

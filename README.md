# FPGAs for High Performance Computing

Code repository for the workshop **FPGAs for High Performance Computing** (FPGA4HPC), organised by the Competence Centre for Chips ([CC Chip.si](https://cc-chip.si)) and the Slovenian National Competence Centre for HPC ([SLING](https://www.sling.si), EuroCC Slovenia), in collaboration with the [University of Ljubljana, Faculty of Computer and Information Science](https://fri.uni-lj.si).

- **Dates:** 4–5 November 2026
- **Location:** online
- **Language:** English
- **Workshop page:** <https://cc-chip.si/slo/high-level-fpga-design-training/>

## About the workshop

The workshop introduces the fundamentals of high-performance computing (computing architectures, parallelism, and the role of hardware accelerators in supercomputers) and then focuses on programming FPGAs with the high-level synthesis (HLS) design flow. Instead of describing hardware in VHDL or Verilog, participants write accelerators in C/C++ and drive them from the host using OpenCL and XRT on AMD-Xilinx Alveo FPGA accelerator cards. The principles carry over to FPGAs from other vendors.

Topics covered:

- HPC architectures and parallelism
- Hardware accelerators in supercomputing
- FPGA technology
- The HLS design flow and writing synthesizable kernels
- Data transfer between the host and the FPGA
- Optimizing designs for speed and resource usage with HLS directives
- Case study: an FPGA accelerator for Cholesky matrix decomposition

After the workshop, participants will:

- understand the architecture of supercomputers and heterogeneous systems,
- understand how FPGA-based heterogeneous systems operate,
- understand FPGA technology and the concepts of OpenCL, XRT and HLS,
- be able to write, compile and run programs on an FPGA,
- be able to apply HLS directives to optimize their designs.

## Repository contents

| Directory | Description |
| --- | --- |
| [00-connecting](00-connecting) | Connecting to the cluster and requesting FPGA resources |
| [01-vec_add](01-vec_add) | Vector addition: the first FPGA kernel and host program |
| [02-matv_mult-naive](02-matv_mult-naive) | Matrix-vector multiplication, naive implementation |
| [03-matv_mult-opt](03-matv_mult-opt) | Matrix-vector multiplication, optimized kernel |
| [04-matv_mult-hls](04-matv_mult-hls) | Kernel optimization in Vitis HLS |
| [05-matv_mult-dataflow](05-matv_mult-dataflow) | Dataflow optimization |
| [06-matv_mult-hostOpt](06-matv_mult-hostOpt) | Host-side optimizations |
| [07-cholesky-decomposition](07-cholesky-decomposition) | Case study: Cholesky decomposition accelerator |
| [08-supplemental-materials](08-supplemental-materials) | Supplemental HLS materials |
| [09-pipeline-example](09-pipeline-example) | Pipelining example |

## Installation

Download the code using:

```console
git clone https://github.com/RatkoFri/FPGA4HPC_coderepo.git
```

and move to the subdirectory:

```console
cd FPGA4HPC_coderepo
```

## Authors

- Davor Sluga, University of Ljubljana, Faculty of Computer and Information Science
- Ratko Pilipović, University of Ljubljana, Faculty of Computer and Information Science

## License

Based on the code samples from [programming-fpga](https://repo.sling.si/ratkop/programming-fpga) &copy; Nejc Ilc and Ratko Pilipović, University of Ljubljana, Faculty of Computer and Information Science.

The materials are published under the license [Attribution-NonCommercial-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-nc-sa/4.0/).

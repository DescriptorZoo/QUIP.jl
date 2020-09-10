# QUIP.jl
Julia PyCall wrapper of QUIPPY for Accessing SOAP Descriptor

This package includes a simple code that demonstrates how to access SOAP descriptor using PyCall and QUIPPY. 
Currently, it does not provide any other descriptor or features of QUIP and QUIPPY codes but new features would like to be added in future. 

## Dependencies:

- [QUIPPY, QUIP and GAP](https://libatoms.github.io/GAP/installation.html)
- [JuLIP.jl](https://github.com/JuliaMolSim/JuLIP.jl)
- [PyCall.jl](https://github.com/JuliaPy/PyCall.jl)
- [ASE.jl](https://github.com/JuliaMolSim/ASE.jl)

## Installation:

First, install QUIPPY with QUIP and GAP following these codes' [documentation](https://libatoms.github.io/GAP/installation.html)

Once you have installed QUIPPY with the Python package that is used by your Julia installation, you can simply add this package to your Julia environment with the following command in Julia package manager and test whether the code produces SOAP descriptors for test system of Si:
```
] add https://github.com/DescriptorZoo/QUIP.jl.git
] test QUIP
```

## How to cite:

If you use this code and hence dependent codes [QUIPPY with QUIP](http://libatoms.github.io/QUIP/) and SOAP as it is part of [GAP](http://libatoms.github.io/GAP/) for your any academic paper or publication, you need to accept the license of [GAP suite — Non-commercial License Agreement](http://www.libatoms.org/gap/gap_download.html) and cite both the codes and their papers as they are described in the codes' [webpage](http://libatoms.github.io/QUIP/).

# julia-pacbiohifiKmerprofile.jl

- julia implementation of the kmer profiles and genomescope.
- genomscope maths to include and will plot the genomescope profiles for both the assembled genomes and pacbiohifireads.
- currently gives all the profiles kmers for the pacbiohifi reads.
- 100GB pacbiohifi reads parsed in less than 15-20 minutes.
- implementing memory borrowing by [RUST bindings](https://github.com/Taaitaaiger/JlrsCore.jl) to make it much faster. Havent wrote RUST in last couple of months, so a day or two for RUST binds.

```
include pacbiohifiKmerprofile.jl
```

Gaurav \
Academic Staff Member \
Bioinformatics \
Institute for Biochemistry and Biology \
University of Potsdam \
Potsdam,Germany

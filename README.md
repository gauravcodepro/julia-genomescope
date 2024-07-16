# pacbiohifiKmerprofile.jl

- julia implementation of the kmer profiles and genomescope.
- genomscope maths to include and will plot the genomescope profiles for both the assembled genomes and pacbiohifireads.
- currently gives all the profiles kmers for the pacbiohifi reads.
- 100GB pacbiohifi reads parsed in less than 15-20 minutes.
- implementing memory borrowing by [RUST bindings](https://github.com/Taaitaaiger/JlrsCore.jl) to make it much faster. 

```
include pacbiohifiKmerprofile.jl
```
- also included in the [PacbioHifi MVC application that i am writing and standalone and syncs with the Pacbiohifi Sequencing](https://github.com/gauravcodepro/julia-pacbiohifi-mvc-app). All the profiles in one application.  

Gaurav 

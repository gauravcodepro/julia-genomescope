#! usr/bin/env julia
# Author Gaurav
# Date 2024-7-3
# preparing the kmer profile of the pacbiohifi reads 
# will integrate the genomscope calculation and will prepapre a plot for the kmer profile for genomes and pacbiohifi reads
# Formula for the genomescope to be added: y ~ ((2 * (1 - d) * (1 - (1 - r)^k)) * dnbinom(x, size = kmercov/bias, 
#    mu = kmercov) * length + ((d * (1 - (1 - r)^k)^2) + (1 - 
#    2 * d) * ((1 - r)^k)) * dnbinom(x, size = kmercov * 2/bias, 
#    mu = kmercov * 2) * length + (2 * d * ((1 - r)^k) * (1 - 
#    (1 - r)^k)) * dnbinom(x, size = kmercov * 3/bias, mu = kmercov * 
#    3) * length + (d * (1 - r)^(2 * k)) * dnbinom(x, size = kmercov * 
#    4/bias, mu = kmercov * 4) * length)

using Plots
function pacbioKmerspace(pacbiohifireads, kmerspace)
    header = Any[]
    sequence = Any[]
    for i in 1:length(readfile)
        if startswith(readfile[i], "@")
            push!(header,replace(split(readfile[i], r" ")[1], "@" => ""))
            push!(sequence,readfile[i+1])
        end
    end
    sequenctag = Any[]
    for i in 1:length(sequence)
        for j in 1:length(sequence[i])-kmerspace
            push!(sequencetag, sequence[i][j:j+kmerspace])
        end
    end
    uniquetag = Set(sequencetag)
    uniquetagarray = Any[]
    for i in uniquetag
        push!(uniquetagarray, i)
    end
    counttag = Dict{String, Int64}()
    for i in 1:length(uniquetagarray)
        counttag[uniquetagarray[i]] = count(==unqiuetagarray[i], sequencetag)
    end
end

function pacbioKmerspace(pacbiohifireads, kmerspace, threshold)
    header = Any[]
    sequence = Any[]
    for i in 1:length(readfile)
        if startswith(readfile[i], "@")
            push!(header,replace(split(readfile[i], r" ")[1], "@" => ""))
            push!(sequence,readfile[i+1])
        end
    end
    sequenctag = Any[]
    for i in 1:length(sequence)
        for j in 1:length(sequence[i])-kmerspace
            push!(sequencetag, sequence[i][j:j+kmerspace])
        end
    end
    uniquetag = Set(sequencetag)
    uniquetagarray = Any[]
    for i in uniquetag
        push!(uniquetagarray, i)
    end
    thresholdplaceholder = parse(Int64, threshold)
    counttag = Dict{String, Int64}()
    for i in 1:length(uniquetagarray)
        if count(==uniquetagarray[i], sequencetage) > thresholdplaceholder
        counttag[uniquetagarray[i]] = count(==unqiuetagarray[i], sequencetag)
    end
    # added the plot function for the variants kmers 
      kmerplotvariantX = [parse(Int64,i) for i in values(counttag)]
      kmerplotvariantY = [i for i in keys(countag)]
      kmervariantplot = plot(kmerplotvariantX, label = kmerplotvariantY)
      savefig("kmerplotvariant.png")
      savefig(kmerplotvariant,"kmervariantplot.pdf")
      end 
end

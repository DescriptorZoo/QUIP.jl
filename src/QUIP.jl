module QUIP

using ASE
using JuLIP
using PyCall

quippy = pyimport("quippy")

export soap

function soap(at, cutoff; n_max=nothing, l_max=nothing, sigma=0.5, normalise=true)

all_unique_nums = unique(collect(at.Z))

#Setting SOAP Descriptors
desc_definition = "soap" * 
                  " cutoff=" * string(cutoff) *
                  " l_max=" * string(l_max) *
                  " n_max=" * string(n_max) *
                  " atom_sigma=" * string(sigma) *
                  " normalise=" * (normalise ? 'T' : 'F') *
                  " n_Z=" * string(length(all_unique_nums)) *
                  " Z={" * join([string(nm) for nm in all_unique_nums], ", ") * "}" * 
                  " n_species=" * string(length(all_unique_nums)) *
                  " species_Z={" * join([string(nm) for nm in all_unique_nums], " ") * "}"

soap_desc = quippy.descriptors.Descriptor(desc_definition)
atom_struct = ASEAtoms(at)
# Calculate descriptor
soap_rtn_desc = soap_desc.calc(atom_struct.po)
#has_data = soap_rtn_desc["has_data"]
return soap_rtn_desc["data"][:,1:end-1]
end

end # module

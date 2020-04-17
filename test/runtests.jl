using QUIP
using Test, LinearAlgebra, BenchmarkTools
using JuLIP, JuLIP.Testing
using QUIP: soap

@testset "QUIP.jl" begin
    include("test.jl")
end


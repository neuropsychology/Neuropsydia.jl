using Neuropsydia
using Base.Test

# write your own tests here
tic()
println("Testing statistics:t_test")
@time @test include("test_statistics_t_test.jl")
toc()

tic()
println("Testing write")
@time @test include("test_write.jl")
toc()

# Copyright (C) 2016   Dominique Makowski
__precompile__()

module Neuropsydia

using GLVisualize


include("core.jl")
export convert

include("screen.jl")

include("write.jl")
# export write

include("statistics.jl")
export t_test


end # module

# Copyright (C) 2016   Dominique Makowski
__precompile__()

module Neuropsydia

using GLVisualize


include("core.jl")
export convert

include("screen.jl")

global window = glscreen(resolution=(screen_width_px, screen_height_px))

include("write.jl")
# export write

include("statistics.jl")
export t_test


end # module

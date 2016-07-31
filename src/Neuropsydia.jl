# Copyright (C) 2016   Dominique Makowski
__precompile__()

module Neuropsydia

import GLVisualize
import GLFW
import GLWindow
import GLAbstraction
import GeometryTypes

include("screen.jl")
export convert
export start
export refresh

include("core.jl")
# export response

include("write.jl")
export write

include("statistics.jl")
export t_test


end # module

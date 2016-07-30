using GLVisualize
using GLAbstraction
using GeometryTypes

const a = "DUPA"
# global window = glscreen(resolution=(1280,1024))
#
#
# function convert(x,y,resolution=(1280,1024))
#   x = (resolution[1]/2) + x*(resolution[1]/2/10)
#   y = (resolution[2]/2) - y*(resolution[2]/2/10)
#   return x, y
# end
#
# function write(text="dupa", x=0,y=0)
#   x, y = convert(x, y)
#   text_viz = visualize(text,
#       model=GLAbstraction.translationmatrix(GeometryTypes.Vec3f0(x,y,0)))
#   view([text_viz], window)
# end

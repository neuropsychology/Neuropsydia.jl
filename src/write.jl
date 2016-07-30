import GLAbstraction
import GeometryTypes

function write(text="dupa", x=0, y=0)
  x, y = convert(x, y)
  println(x, y)
  text_viz = visualize(string(text),
      model=GLAbstraction.translationmatrix(GeometryTypes.Vec3f0(x,y,0)))
  view([text_viz], window)
end

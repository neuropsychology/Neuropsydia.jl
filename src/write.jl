
function write(text::Any="dupa", x=0::Number, y=0::Number)
  x, y = coordinates(x, y)
  text_viz = GLVisualize.visualize(string(text),
      model=GLAbstraction.translationmatrix(GeometryTypes.Vec3f0(x,y,0)))
  GLVisualize.view([text_viz], window)
end

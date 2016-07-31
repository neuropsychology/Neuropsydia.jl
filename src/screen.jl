monitor = GLWindow.MonitorProperties(GLFW.GetPrimaryMonitor())

const screen_width_px = monitor.videomode.width
const screen_height_px = monitor.videomode.height
const screen_width_cm = monitor.physicalsize[1]/10
const screen_height_cm = monitor.physicalsize[2]/10

"""
Convert corrdinates from neuropsydia's space (-10:10, -10:10) to pixels' space.

**Arguments**
* `x::float`: A value from -10 (left side) to 10 (right side)
* `y::float`: A value from -10 (bottom) to 10 (top)
**Keyword Arguments**
* `return_matrix::bool`: return a translation matrix isntead of a tuple
**Returns**
x, y: converted coordinates (into pixel space)
**Examples**
```julia
xnew, ynew = coordinates(-3, 2)
```
"""
function coordinates(x, y; return_matrix=false)
  x = (screen_width_px/2) + x*(screen_width_px/2/10)
  y = (screen_height_px/2) - y*(screen_height_px/2/10)
  if return_matrix == false
      return x, y
  else
      return GLAbstraction.translationmatrix(GeometryTypes.Vec3f0(x,y,0))
  end
end





function start()
    global window = GLVisualize.glscreen("Neuropsydia", resolution=(screen_width_px, screen_height_px))
end



function refresh()
    GLWindow.render_frame(window)
end

function response()
    while !GLFW.GetKey(GLFW.KEY_ESCAPE)
        if GLFW.GetKey(GLFW.KEY_UP) == true
            println("UP")
        end
        # n.refresh()
    end
end

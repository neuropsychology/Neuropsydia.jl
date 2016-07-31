import GLFW
import GLWindow

monitor = GLWindow.MonitorProperties(GLFW.GetPrimaryMonitor())

const screen_width_px = monitor.videomode.width
const screen_height_px = monitor.videomode.height
const screen_width_cm = monitor.physicalsize[1]/10
const screen_height_cm = monitor.physicalsize[2]/10

extends Node

func set_fps(fps):
	if typeof(fps) == TYPE_INT:
		if vsynch_status() == DisplayServer.VSYNC_DISABLED :
			Engine.max_fps = fps
		else:
			if fps == 0:
				print ("Uncapped fps with VSync")
				Engine.max_fps = fps
			else:
				print ("Warning : Cap fps with VSync")
				Engine.max_fps = fps
	else:
		printerr ("Wrong call set fps with variable : " + str(fps))
		
func get_fps():
	return (Engine.max_fps)

func enable_vsync():
	DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_ADAPTIVE, 0)
	
func disable_vsync():
	DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED, 0)

func vsynch_status():
	return (DisplayServer.window_get_vsync_mode(0))

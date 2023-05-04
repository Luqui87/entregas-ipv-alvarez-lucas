extends Node



## HINT: Mouse input won't work by default for any button added because some other
## Control node will consume the mouse input first.
## Check what does the property Control.mouse_filter do in the docs and experiment.


func _ready():
	$Container/Buttons/Start.grab_focus()

func _on_Start_pressed():
	get_tree().change_scene("res://src/game/levels/LevelManager.tscn")


func _on_Quit_pressed():
	get_tree().quit()

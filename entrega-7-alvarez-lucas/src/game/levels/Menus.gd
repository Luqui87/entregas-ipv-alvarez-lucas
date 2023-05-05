extends Control

var isPaused = true setget set_is_paused


func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		self.isPaused = !isPaused
		
		
func set_is_paused(value):
	isPaused = value
	.get_tree().set_pause(isPaused)
	$UI/Menus.visible = isPaused


func _on_Play_pressed():
	self.isPaused = !isPaused


func _on_Back_pressed():
	get_tree().change_scene("res://src/screens/MainMenu.tscn")

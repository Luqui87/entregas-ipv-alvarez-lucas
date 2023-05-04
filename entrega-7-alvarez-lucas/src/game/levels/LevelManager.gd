extends Node

export (Array, PackedScene) var levels: Array

onready var current_level_container: Node = $CurrentLevelContainer

var isPaused = true setget set_is_paused

## This won't run by itself. Use all variables and functions necessary to run this correctly.

func _setup_level(id: int) -> void:
	if id >= 0 && id < levels.size():
		if current_level_container.get_child_count() > 0:
			for child in current_level_container.get_children():
				current_level_container.remove_child(child)
				child.queue_free()
		
		var level_instance: GameLevel = levels[id].instance()
		current_level_container.add_child(level_instance)

func _ready():
	_setup_level(0)
	current_level_container.get_tree().set_pause(true)
	current_level_container.get_child(0).connect("hp_changed",self,"_on_hp_changed")
	
## Hint: for pause check the SceneTree.paused property.

func _on_hp_changed(value):
	$UI/GUI._on_hp_changed(value)

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		self.isPaused = !isPaused

func set_is_paused(value):
	isPaused = value
	current_level_container.get_tree().set_pause(isPaused)
	$UI/Menus/PauseMenu.visible = isPaused


func _on_Play_pressed():
	self.isPaused = !isPaused


func _on_Back_pressed():
	get_tree().change_scene("res://src/screens/MainMenu.tscn")

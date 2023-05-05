extends Node
class_name GameLevel

signal hp_changed(value)
signal player_win
signal player_lose

## You shouldn't load this scene directly, the LevelManager should do that for you.

## This script should be the same for all levels. If you need to extend it's functionality
## check if you either need it for all levels or just for that single level.

func _ready() -> void:
	randomize()


func _on_Player_hp_changed(value):
	emit_signal("hp_changed", value)

func _on_Trophy_player_win():
	emit_signal("player_win")


func _on_Player_player_lose():
	emit_signal("player_lose")


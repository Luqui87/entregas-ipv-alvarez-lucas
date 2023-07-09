extends "res://src/game/entities/AbstractState.gd"



# Initialize the state. E.g. change the animation
func enter() -> void:
	character._play_animation("dead",false)

func _on_animation_finished(anim_name: String) -> void:
	character._remove()

	
func update(delta:float) -> void:
	character._apply_movement()

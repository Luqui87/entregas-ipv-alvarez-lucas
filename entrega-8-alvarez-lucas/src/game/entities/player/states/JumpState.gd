extends "res://src/game/entities/AbstractState.gd"


# Initialize the state. E.g. change the animation
func enter() -> void:
	character._play_animation("jump",false)
	character.velocity.y = -character.jump_speed
	character.snap_vector = Vector2.ZERO

func update(delta:float) -> void:
	character._handle_cannon_actions()
	character._handle_move_input()
	character._apply_movement()
	if character.move_direction == 0:
		character._handle_deacceleration()
	if character.is_on_floor():
		if character.move_direction != 0:
			emit_signal("finished","walk")
		else:
			emit_signal("finished","idle")

func _on_animation_finished(anim_name: String) -> void:
	return

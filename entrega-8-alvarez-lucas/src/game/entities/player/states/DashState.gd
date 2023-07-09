extends "res://src/game/entities/AbstractState.gd"


# Initialize the state. E.g. change the animation
func enter() -> void:
	character._play_animation("dash", false)



func update(delta:float) -> void:
	character._handle_dash()
		
	if character.canDash:
		if character.move_direction != 0:
			emit_signal("finished","walk")
		else:
			emit_signal("finished","idle")
			character._handle_deacceleration()
	
	


func _on_animation_finished(anim_name: String) -> void:
	emit_signal("finished", "walk")


func handle_event(event: String, value = null) -> void:
	return

extends Area2D

signal player_win

func _on_Trophy_body_entered(body):
	emit_signal("player_win")

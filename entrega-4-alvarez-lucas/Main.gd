extends Node


func _ready():
	$Player.set_projectile_container(self)
	$Torret.set_values($Player, self)
	$Torret2.set_values($Player, self)
	$Torret3.set_values($Player, self)
	$Torret4.set_values($Player, self)


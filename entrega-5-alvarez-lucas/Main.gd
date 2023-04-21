extends Node

onready var player = $Player
onready var turret_spawner = $TurretsSpawner
onready var label = $Label

func _ready():
	randomize()
	player.initialize(self)
	turret_spawner.initialize()
	label.visible = false


func _on_Area2D_body_entered(body):
	player.queue_free()
	label.visible = true

extends Node

export (PackedScene) var turret_scene

onready var piso = get_parent().get_node("Floor")

func initialize():
	var visible_rect:Rect2 = get_viewport().get_visible_rect()
	var width:Vector2 = piso.get_global_position()
	for i in 3:
		var turret_instance = turret_scene.instance()
		
		var turret_pos:Vector2 = Vector2(rand_range(visible_rect.position.x, 2400), rand_range(visible_rect.position.y + 30, 100))
		
		turret_instance.initialize(self, turret_pos, self)

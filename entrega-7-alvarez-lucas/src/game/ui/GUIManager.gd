extends Control

## Gotta display the hp here. To communicate with the Player node to handle the data, you can either
## capture some "hit"/"hp_changed" signal via Level, or you can use Autoload/Singletons.
## Remember to refresh the data if you restart the level.
var hp = 5

func _ready():
	pass
	
func _on_hp_changed(value):
	if value == -1 && hp > 0 :
		self.hp = self.hp - 1
		var heart = $HBoxContainer.get_child(self.hp)
		heart.texture = load("res://assets/textures/ui/gui/hud_heartEmpty.png")

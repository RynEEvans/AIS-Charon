extends Node2D

@onready var game_manager = %GameManager
@onready var interactable : Area2D = $Interactable
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	interactable.interact = _on_interact
	
func _on_interact():
	interactable.is_interactable = false
	print_debug("Fleshberry Picked Up")
	pickedup()


func pickedup():
	%Player.health += 2
	%Player.update_health_bar()
	queue_free()

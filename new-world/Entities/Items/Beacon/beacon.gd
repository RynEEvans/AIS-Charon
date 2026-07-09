extends CharacterBody2D

@onready var beacon_sprite : AnimatedSprite2D = $AnimatedSprite2D
@onready var interactable : Area2D = $Interactable

var bullet_speed : int = 400
var dir : float
var spawnPos : Vector2
var spawnRot : float
var zdex : int
var touching = false

func _ready():
	global_position = spawnPos
	global_rotation = spawnRot
	z_index = zdex
	
	interactable.interact = _on_interact
	
func _on_interact():
	if beacon_sprite.animation == "Idle":
		beacon_sprite.play("Pickup")
		interactable.is_interactable = false
		print_debug("Beacon Picked Up")
		picked_up()
	
func picked_up():
	queue_free()

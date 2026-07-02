extends CharacterBody2D

@onready var beacon_sprite : AnimatedSprite2D = $AnimatedSprite2D

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
	
func picked_up():
	queue_free()

func _on_pick_up_zone_body_entered(body: Node2D) -> void:
	touching = true
	print_debug("TOUCHing")
	print_debug(touching)


func _on_pick_up_zone_body_exited(body: Node2D) -> void:
	touching = false
	print_debug("Not TOUCHing")
	print_debug(touching)

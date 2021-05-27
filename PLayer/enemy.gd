extends KinematicBody2D

var speed = 80

var velocity = Vector2()

func _process(delta):
	if Global.player != null:
		velocity = global_position.direction_to(Global.player.global_position)
	
	global_position += velocity * speed * delta

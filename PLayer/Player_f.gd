extends KinematicBody2D


var speed = 150
var velocity = Vector2()

var bullet =preload("res://PLayer/bullet.tscn")

func _process(delta):
	velocity.x = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	velocity.y = int(Input.is_action_pressed("move_down")) - int(Input.is_action_pressed("move_up"))
	
	velocity = velocity.normalized()
	
	global_position += speed * velocity * delta
	
	if Input.is_action_just_pressed("click") and Global.node_creation_parent != null:
		Global.instance_node(bullet, global_position, Global.node_creation_parent)
	

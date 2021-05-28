extends KinematicBody2D


var speed = 150

var velocity = Vector2()

var bullet_1 = preload("res://PLayer/bullet.tscn")

var bullet_2 = preload("res://PLayer/bullet_2.tscn")

var can_shoot = true

var can_shoot_2 = true

var visibile = true

var is_dead = false



func _ready():
	Global.player = self

func _exit_tree():
	Global.player = null


func _process(delta):
	velocity.x = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	velocity.y = int(Input.is_action_pressed("move_down")) - int(Input.is_action_pressed("move_up"))
	
	velocity = velocity.normalized()
	
	if is_dead == false:
		global_position += speed * velocity * delta
	
	if Input.is_action_pressed("left_click") and Global.node_creation_parent != null and can_shoot and is_dead == false:
		Global.instance_node(bullet_1, global_position, Global.node_creation_parent)
		$Reload_speed.start()
		can_shoot = false
		
	if Input.is_action_pressed("right_click") and Global.node_creation_parent != null and can_shoot_2 and is_dead == false:
		Global.instance_node(bullet_2, global_position, Global.node_creation_parent)
		$Reload_speed_2.start()
		can_shoot_2 = false

func _on_Reload_speed_timeout():
	can_shoot = true


func _on_Hitbox_area_entered(area):
	
	if area.is_in_group("Enemy"):
		Global.player_hp -= 1

		if Global.player_hp <= 0:
			get_tree().change_scene("res://Screne/Death_screne.tscn")
			
			

func _on_Reload_speed_2_timeout():
	can_shoot_2 = true

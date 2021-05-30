extends KinematicBody2D


var speed = 90

var enemy_hp = 5

var velocity = Vector2()

var stun = false

var kill_particle_2 = preload("res://PLayer/Kill_particle_2.tscn")


func _process(delta):
	if Global.player != null and stun == false:
		velocity = global_position.direction_to(Global.player.global_position)
	elif stun:
		velocity = lerp(velocity, Vector2(0, 0), 0.3)
		
	if enemy_hp <= 0:
		Global.score += Global.poits_per_kill * 2
		if Global.node_creation_parent != null:
			var kill_particle_instance = Global.instance_node(kill_particle_2, global_position, Global.node_creation_parent)
			kill_particle_instance.rotation = velocity.angle()
			
		
		queue_free()
		
	global_position += velocity * speed * delta


func _on_Stun_timer_2_timeout():
	modulate = Color("37f40a")
	stun = false


func _on_Hitbox_area_entered(area):
	
	if area.is_in_group("Enemy_damager") and stun == false:
		
		modulate = Color.white
		velocity = -velocity * Global.knockback
		enemy_hp -= 1
		stun = true
		
		$Stun_timer_2.start()
		area.get_parent().queue_free()
		
	if area.is_in_group("Enemy_damager_2") and stun == false:
		
		enemy_hp = 0

	if area.is_in_group("hitbox_player"):
		enemy_hp = 0



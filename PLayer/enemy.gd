extends KinematicBody2D


var speed = 80

var enemy_hp = 3

var velocity = Vector2()

var stun = false

var kill_particle = preload("res://PLayer/Kill_particle.tscn")


func _process(delta):
	if Global.player != null and stun == false:
		velocity = global_position.direction_to(Global.player.global_position)
	elif stun:
		velocity = lerp(velocity, Vector2(0, 0), 0.3)
		
	if enemy_hp <= 0:
		Global.score += Global.poits_per_kill * 1
		if Global.node_creation_parent != null:
			var kill_particle_instance = Global.instance_node(kill_particle, global_position, Global.node_creation_parent)
			kill_particle_instance.rotation = velocity.angle()
			
		
		queue_free()
		
	global_position += velocity * speed * delta



func _on_Hitbox_area_entered(area):
	
	if area.is_in_group("Enemy_damager") and stun == false:
		
		modulate = Color.white
		velocity = -velocity * Global.knockback
		enemy_hp -= 1
		stun = true
		
		$Stun_timer.start()
		area.get_parent().queue_free()
		
	if area.is_in_group("Enemy_damager_2") and stun == false:
		
		enemy_hp = 0

	if area.is_in_group("hitbox_player"):
		enemy_hp = 0


func _on_Stun_timer_timeout():
	
	modulate = Color("ff0c00")
	stun = false

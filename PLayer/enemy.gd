extends KinematicBody2D


var speed = 80

var velocity = Vector2()

var stun = false

var hp = 3

var knockback = 6

func _process(delta):
	if Global.player != null and stun == false:
		velocity = global_position.direction_to(Global.player.global_position)
	elif stun:
		velocity = lerp(velocity, Vector2(0, 0), 0.3)
	if hp <= 0:
		print("tod")
		queue_free()
		
	global_position += velocity * speed * delta



func _on_Hitbox_area_entered(area):
	
	if area.is_in_group("Enemy_damager") and stun == false:
		
		modulate = Color.white
		velocity = -velocity * knockback
		hp -= 1
		stun = true
		
		$Stun_timer.start()
		area.get_parent().queue_free()



func _on_Stun_timer_timeout():
	
	modulate = Color("ff0c00")
	stun = false

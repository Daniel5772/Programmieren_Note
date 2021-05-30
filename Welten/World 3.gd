extends Button

func _process(delta):
	if GlobalWorld.worlds_finished >= 3:
		modulate = Color.green

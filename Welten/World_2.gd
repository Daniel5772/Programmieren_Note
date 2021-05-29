extends Button

func _process(delta):
	if GlobalWorld.worlds_finished >= 2:
		modulate = Color.green

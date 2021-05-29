extends Button

func _process(delta):
	if GlobalWorld.worlds_finished >= 1:
		modulate = Color.green

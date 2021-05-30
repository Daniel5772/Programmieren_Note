extends Label

func _process(delta):
	if Global.bullet_2 == true:
		text = "1"
	else:
		text = ""

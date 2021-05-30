extends Label

func _process(delta):
	
	text = String(Global.score)
	if Global.score >= 100:
		get_tree().change_scene("res://Welten/Finished.tscn")
		GlobalWorld.worlds_finished = 3

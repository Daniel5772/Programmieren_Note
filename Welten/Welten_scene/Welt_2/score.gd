extends Label

func _process(delta):
	
	text = String(Global.score)
	if Global.score >= 75:
		get_tree().change_scene("res://Welten/Finished.tscn")
		GlobalWorld.worlds_finished = 2

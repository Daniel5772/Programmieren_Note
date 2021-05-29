extends Label

func _process(delta):
	if Global.score > Global.high_score:
		Global.old_high_score = Global.high_score
		Global.high_score = Global.score
		get_tree().change_scene("res://Screne/new_high_score.tscn")
		
	text = String(Global.high_score)
	

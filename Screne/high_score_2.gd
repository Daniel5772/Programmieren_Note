extends Label

func _process(delta):
	if Global.score > Global.high_score:
		print("new highscore")
		Global.high_score = Global.score
	text = String(Global.high_score)
	

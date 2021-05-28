extends Node2D


func _on_Button_pressed():
	get_tree().change_scene("res://Level/Level 1.tscn")
	
	Global.score = 0


func _on_Button2_pressed():
	get_tree().change_scene("res://Screne/Menu.tscn")

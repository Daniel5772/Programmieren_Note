extends Node2D



func _on_World_1_pressed():
	get_tree().change_scene("res://Welten/Welten_scene/Welt_1.tscn")
	Global.is_in_world = true
	GlobalWorld.welt = 1


func _on_Button_pressed():
	get_tree().change_scene("res://Screne/Menu.tscn")
	

extends Node2D



func _on_World_1_pressed():
	get_tree().change_scene("res://Welten/Welten_scene/Welt_1.tscn")
	Global.is_in_world = true
	GlobalWorld.welt = 1


func _on_Button_pressed():
	get_tree().change_scene("res://Screne/Menu.tscn")
	


func _on_World_2_pressed():
	if GlobalWorld.worlds_finished >= 1:
		get_tree().change_scene("res://Welten/Welten_scene/Welt_2/Welt_2.tscn")
		Global.is_in_world = true
		GlobalWorld.welt = 2


func _on_World_3_pressed():
	if GlobalWorld.worlds_finished >= 2:
		get_tree().change_scene("res://Welten/Welten_scene/Welt_3/Welt_3.tscn")
		Global.is_in_world = true
		GlobalWorld.welt = 3

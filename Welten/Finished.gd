extends Node2D



func _on_Menu_button_pressed():
	get_tree().change_scene("res://Screne/Menu.tscn")
	Global.player_hp = 5
	Global.score = 0
	Global.is_in_world = false


func _on_Worldsbutton_pressed():
	get_tree().change_scene("res://Welten/World hub.tscn")
	Global.player_hp = 5
	Global.score = 0
	Global.is_in_world = false

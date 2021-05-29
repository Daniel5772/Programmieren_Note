extends Node2D



func _on_Back_to_menu_pressed():
	get_tree().change_scene("res://Screne/Menu.tscn")
	Global.player_hp = 5
	Global.score = 0

func _on_Back_to_world_pressed():
	get_tree().change_scene("res://Welten/World hub.tscn")
	Global.player_hp = 5
	Global.score = 0

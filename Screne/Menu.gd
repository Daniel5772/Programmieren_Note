extends Node2D

func _on_Endless_button_pressed():
	get_tree().change_scene("res://Level/Level 1.tscn")


func _on_Quit_button_pressed():
	get_tree().quit()


func _on_Level_button_pressed():
	get_tree().change_scene("res://Welten/World hub.tscn")
	
	

func _on_Settings_button_pressed():
	get_tree().change_scene("res://Screne/comming soon.tscn")

extends Node2D



func _on_Endless_button_pressed():
	get_tree().change_scene("res://Level/Level 1.tscn")


func _on_Quit_button_pressed():
	queue_free()


func _on_Level_button_pressed():
	get_tree().change_scene("res://Screne/comming soon.tscn")
	
	

func _on_Settings_button_pressed():
	get_tree().change_scene("res://Screne/comming soon.tscn")

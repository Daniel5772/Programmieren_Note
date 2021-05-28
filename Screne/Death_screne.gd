extends Node2D


func _on_Button_pressed():
	get_tree().change_scene("res://Level/Level 1.tscn")


func _on_Button2_pressed():
	queue_free()

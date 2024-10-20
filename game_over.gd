extends Node2D




func _on_reset_pressed() -> void:
	get_tree().change_scene_to_file("res://Game.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()

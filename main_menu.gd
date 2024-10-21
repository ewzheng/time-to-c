extends Control


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Game.tscn")
	
func _ready() -> void:
	get_node("AudioStreamPlayer2D").play(9)

func _on_quit_pressed() -> void:
	get_tree().quit()

func _on_help_pressed() -> void:
	get_tree().change_scene_to_file("res://HowToPlay.tscn")

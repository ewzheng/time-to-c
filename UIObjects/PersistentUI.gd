extends Node

var progressBar

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	progressBar = get_node("ProgressBarUI")

func _on_correct_answer() -> void:
	progressBar.addProgress()
	progressBar.setProgress()

extends Node

var progress
var progressBar
var maxVal

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	progress = 0.0
	progressBar = get_node("progressBar")
	maxVal = get_node("background").get_size().x

func _resetTimer() -> void:
	progress = 0
	progressBar.set_color(Color(0.697, 0.298, 0.298))
	
func addProgress() -> void:
	progress += 10	
	
	# clamp value
	if progress > 100:
		progress = 100
		
	if progress >= 70:
		progressBar.set_color(Color(0.499, 0.721, 0.55))
	
	get_tree().create_tween().tween_property(progressBar, "size:x", (progress/100.0) * maxVal, 0.5)

extends Control

@onready var label = $Label
@onready var timer  = $Timer


func _ready():
		timer.start()

func time_tick():
	var time_left = timer.time_left
	var minutes = floor(time_left / 60)
	var seconds = int(time_left) % 60
	return [minutes, seconds]

func time_out():
	if timer.time_left <= 0.0:
		get_tree().change_scene_to_file("res://GameOver.tscn")

func _process(delta):
	label.text = "%02d:%02d" % time_tick()
	time_out()

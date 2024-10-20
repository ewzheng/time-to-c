extends Control

@onready var label = $Label
@onready var timer  = $Timer

func _ready():
	timer.start()
	
func time_out():
	var time_left = timer.time_left
	var minutes = floor(time_left / 60)
	var seconds = int(time_left) % 60
	return [minutes, seconds]
	
func _process(delta):
	label.text = "%02d:%02d" % time_out()

extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_node("Dialogue").setLines(["I’m a nepo baby. This is a formality", "Remember to answer with STAR method", "I was silver cohort at Eller, the Harvard of the Southwest"])
	get_node("Dialogue2").setLines(["My GPA is 4.0. Easy In", "Money over Ethics baby", "Can't wait to talk to HR"])

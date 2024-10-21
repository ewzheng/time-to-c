extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_node("Dialogue").setLines(["This shit is so Joever", "I’m so cooked", "They pay 25 dollars an hour at In and Out?!?!"])
	get_node("Dialogue2").setLines(["Time to change my major", "I’ve never seen an average in the single digits before"])

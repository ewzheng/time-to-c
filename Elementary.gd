extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_node("Dialogue").setLines(["Crayons taste good!", "I think I pooped my pants", "what the skibidi"])
	get_node("Dialogue2").setLines(["Crayons taste good!", "I'm confused", "I want to go home", "PeePee PooPoo"])

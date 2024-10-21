extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_node("Dialogue").setLines(["Can I cheat off your exam?", "Welp. Time to join the military"])
	get_node("Dialogue2").setLines(["Yo Mr.White. You're cooking!", "Skibidi Bibidi. Help"])
	get_node("Dialogue3").setLines(["What the Sigma?"])

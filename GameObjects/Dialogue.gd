extends Node

var rng
var timeLim
var timer
var lines = [""]
var debounce
# Called when the node enters the scene tree for the first time.
signal sceneChanged

func _ready() -> void:
	self.modulate.a = 0
	rng = RandomNumberGenerator.new()	
	timeLim = rng.randi_range(3, 10)
	timer = 0
	debounce = false
	
func setLines(newLines) -> void:
	lines = newLines

# Called every frame. 'delta' is the elapsed time since the previous frame.
func create(t) -> void:
	debounce = true
	timeLim = rng.randi_range(3, 10)
	get_node("Text").set_text(t)
	await get_tree().create_tween().tween_property(self, "modulate:a", 1, 1).finished
	await get_tree().create_timer(3).timeout
	await get_tree().create_tween().tween_property(self, "modulate:a", 0, 1).finished
	debounce = false
	
func _process(delta) -> void:
	timer += delta
	if debounce:
		timer = 0
		
	if timer >= timeLim && !debounce:
		create(lines[rng.randi_range(0, lines.size()-1)])
		timer = 0

extends Control

@onready var questionContainer =  $problemMargin/problemContainer/QuestionText
@onready var arow_answer = $problemMargin/problemContainer/VBoxContainer/aRow/answerText
@onready var brow_answer = $problemMargin/problemContainer/VBoxContainer/bRow/answerText
@onready var crow_answer = $problemMargin/problemContainer/VBoxContainer/cRow/answerText
@onready var drow_answer = $problemMargin/problemContainer/VBoxContainer/dRow/answerText

var scene_index = 0
var json_as_dict = {}
var currentAnswer = null

signal rightAnswer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var file = "res://GameData/combined_mc_questions.json"
	var json_as_text = FileAccess.get_file_as_string(file)
	json_as_dict = JSON.parse_string(json_as_text)
	#if json_as_dict:
	#	print(json_as_dict)
	load_question_into_ui(json_as_dict, scene_index)    


func load_question_into_ui(json_as_dict, index):
	if index < json_as_dict.size():
		var current_question = json_as_dict[index]
		
		# Set the question and options in their respective UI elements
		questionContainer.text = current_question["Multiple Choice Questions"]
		arow_answer.text= current_question["A"]
		brow_answer.text = current_question["B"]
		crow_answer.text = current_question["C"]
		drow_answer.text  = current_question["D"]
		
	else:
		print("Index out of bounds")

func _on_submit_button_pressed() -> void:
	if currentAnswer != null:
		if currentAnswer == json_as_dict[scene_index]["Answer"] || json_as_dict[scene_index]["Answer"] == "All":
			rightAnswer.emit()
			
		currentAnswer = null
		scene_index+=1
		load_question_into_ui(json_as_dict, scene_index)
	

func _on_a_button_pressed() -> void:
	currentAnswer = "A"
	
func _on_b_button_pressed() -> void:
	currentAnswer = "B"

func _on_c_button_pressed() -> void:
	currentAnswer = "C"
	
func _on_d_button_pressed() -> void:
	currentAnswer = "D"

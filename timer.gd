extends Control

var countdown_duration: int = 60  # Set the countdown duration in seconds
var timer_label: Label  # Reference to the Label node

func _ready():
	# Get the Label node for displaying the timer
	timer_label = $Label
	# Set the initial time on the label
	update_timer_label()

func _on_Timer_timeout():
	# Decrease the countdown by 1 every second
	if countdown_duration > 0:
		countdown_duration -= 1
		update_timer_label()
	else:
		$Timer.stop()  # Stop the timer when countdown reaches 0
		timer_finished()  # Call the function when the timer finishes

# Updates the label with the formatted time
func update_timer_label():
	timer_label.text = str(countdown_duration)

# Function to handle what happens when the timer finishes
func timer_finished():
	timer_label.text = "Time's Up!"
	# You can add any additional logic here, like transitioning scenes or showing a game over screen

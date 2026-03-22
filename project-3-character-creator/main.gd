extends Node2D
var options = ""
var saved = ""
var customization = "111"
signal head_change
signal torso_change
signal legs_change
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	options += customization
	$"Customization String".set_text(options)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func process(_delta: float):
	pass


func _on_save_pressed():
	saved = options
	print(saved)


func _on_head_button_1_pressed():
	if int(customization[0]) <= 1 and int(customization[0]) != 0:
		customization[0] = "3"
		options = customization
		$"Customization String".set_text(options)
	elif int(customization[0]) == 3 and int(customization[0]) != 0:
		customization[0] = "2"
		options = customization
		$"Customization String".set_text(options)
	elif int(customization[0]) == 2 and int(customization[0]) != 0:
		customization[0] = "1"
		options = customization
		$"Customization String".set_text(options)


func _on_head_button_2_pressed():
	if int(customization[0]) >= 3 and int(customization[0]) != 0:
		customization[0] = "1"
		options = customization
		$"Customization String".set_text(options)
	elif int(customization[0]) == 2 and int(customization[0]) != 0:
		customization[0] = "3"
		options = customization
		$"Customization String".set_text(options)
	elif int(customization[0]) == 1 and int(customization[0]) != 0:
		customization [0] = "2"
		options = customization
		$"Customization String".set_text(options)


func _on_line_edit_text_submitted(new_text: String):
	if new_text.is_valid_int() and int(new_text) <= 333:
		options = new_text
		$"Customization String".set_text(options)
	elif int(new_text) > 333:
		print("Error: Number too big")
	else:
		print("Error: Not a valid option")


func _on_torso_button_1_pressed():
	if int(customization[1]) <= 1 and int(customization[1]) != 0:
		customization[1] = "3"
		options = customization
		$"Customization String".set_text(options)
	elif int(customization[1]) == 3 and int(customization[1]) != 0:
		customization[1] = "2"
		options = customization
		$"Customization String".set_text(options)
	elif int(customization[1]) == 2 and int(customization[1]) != 0:
		customization[1] = "1"
		options = customization
		$"Customization String".set_text(options)


func _on_torso_button_2_pressed():
	if int(customization[1]) >= 3 and int(customization[1]) != 0:
		customization[1] = "1"
		options = customization
		$"Customization String".set_text(options)
	elif int(customization[1]) == 2 and int(customization[1]) != 0:
		customization[1] = "3"
		options = customization
		$"Customization String".set_text(options)
	elif int(customization[1]) == 1 and int(customization[1]) != 0:
		customization[1] = "2"
		options = customization
		$"Customization String".set_text(options)


func _on_legs_button_1_pressed():
	if int(customization[2]) <= 1 and int(customization[2]) != 0:
		customization[2] = "3"
		options = customization
		$"Customization String".set_text(options)
	elif int(customization[2]) == 3 and int(customization[2]) != 0:
		customization[2] = "2"
		options = customization
		$"Customization String".set_text(options)
	elif int(customization[2]) == 2 and int(customization[2]) != 0:
		customization[2] = "1"
		options = customization
		$"Customization String".set_text(options)


func _on_legs_button_2_pressed() -> void:
	if int(customization[2]) >= 3 and int(customization[2]) != 0:
		customization[2] = "1"
		options = customization
		$"Customization String".set_text(options)
	elif int(customization[2]) == 2 and int(customization[2]) != 0:
		customization[2] = "3"
		options = customization
		$"Customization String".set_text(options)
	elif int(customization[2]) == 1 and int(customization[2]) != 0:
		customization[2] = "2"
		options = customization
		$"Customization String".set_text(options)


func _on_load_pressed() -> void:
	head_change.emit()
	legs_change.emit()
	torso_change.emit()

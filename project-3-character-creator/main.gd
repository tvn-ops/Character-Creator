extends Node2D
var options = ""
var saved = ""
var customization = "111"
signal change_to_head1
signal change_to_head2
signal change_to_head3
signal change_to_torso1
signal change_to_torso2
signal change_to_torso3
signal change_to_legs1
signal change_to_legs2
signal change_to_legs3
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	options += customization
	$"Customization String".set_text(options)


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
	if new_text.is_valid_int() and int(new_text) <= 333 and int(new_text) >= 111:
		options = new_text
		$"Customization String".set_text(options)
		if new_text[0] == "1":
			change_to_head1.emit()
		elif new_text[0] == "2":
			change_to_head2.emit()
		elif new_text[0] == "3":
			change_to_head3.emit()
		if new_text[1] == "1":
			change_to_torso1.emit()
		elif new_text[1] == "2":
			change_to_torso2.emit()
		elif new_text[1] == "3":
			change_to_torso3.emit()
		if new_text[2] == "1":
			change_to_legs1.emit()
		elif new_text[2] == "2":
			change_to_legs2.emit()
		elif new_text[2] == "3":
			change_to_legs3.emit()
	elif int(new_text) > 333:
		print("Error: Number too big")
	elif !new_text.is_valid_int():
		print("Error: Not a valid option")
	else:
		print("Error: Number too small")


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


func _on_load_pressed():
	if saved[0] == "1":
		change_to_head1.emit()
	elif saved[0] == "2":
		change_to_head2.emit()
	elif saved[0] == "3":
		change_to_head3.emit()
	if saved[1] == "1":
		change_to_torso1.emit()
	elif saved[1] == "2":
		change_to_torso2.emit()
	elif saved[1] == "3":
		change_to_torso3.emit()
	if saved[2] == "1":
		change_to_legs1.emit()
	elif saved[2] == "2":
		change_to_legs2.emit()
	elif saved[2] == "3":
		change_to_legs3.emit()
	$"Customization String".set_text(saved)

extends Node2D
var heads = []
var index = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	heads.append($"Racoon Head")
	heads.append($"Bull Head")
	heads.append($"Human Head")
	for head in heads:
		head.visible = false
	heads[0].visible = true


func _on_head_button_1_pressed():
	index -= 1
	print(index)
	for head in heads:
		if heads[(index + 1)].visible == true:
			heads[(index + 1)].visible = false
		heads[index].visible = true
	if index == -3 and index != 0:
		index += 3
		for head in heads:
			head.visible = false
		heads[0].visible = true


func _on_head_button_2_pressed():
	index += 1
	print(index)
	if index > 2 and index != 0:
		index = 0
		for head in heads:
			head.visible = false
		heads[0].visible = true
	else:
		for head in heads:
			if heads[(index - 1)].visible == true:
				heads[(index - 1)].visible = false
			heads[index].visible = true


func _on_main_change_to_head_1():
	for head in heads:
		head.visible = false
	heads[0].visible = true




func _on_main_change_to_head_2():
	for head in heads:
		head.visible = false
	heads[1].visible = true




func _on_main_change_to_head_3():
	for head in heads:
		head.visible = false
	heads[2].visible = true



func _on_check_button_toggled(toggled_on: bool):
	if toggled_on:
		$"Racoon Head".self_modulate = Color(1, 0, 0)
		$"Bull Head".self_modulate = Color(1, 0, 0)
		$"Human Head".self_modulate = Color(1, 0, 0)
	else:
		$"Racoon Head".self_modulate = Color(1, 1, 1)
		$"Bull Head".self_modulate = Color(1, 1, 1)
		$"Human Head".self_modulate = Color(1, 1, 1)

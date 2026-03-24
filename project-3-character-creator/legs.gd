extends Node2D
var Legs = []
var index = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	Legs.append($"Racoon Legs")
	Legs.append($"Bull Legs")
	Legs.append($"Horse Legs")
	for Leg in Legs:
		Leg.visible = false
	Legs[0].visible = true


func _on_legs_button_1_pressed():
	index -= 1
	print(index)
	for Leg in Legs:
		if Legs[(index + 1)].visible == true:
			Legs[(index + 1)].visible = false
		Legs[index].visible = true
	if index == -3 and index != 0:
		index += 3
		for Leg in Legs:
			Leg.visible = false
		Legs[0].visible = true


func _on_legs_button_2_pressed():
	index += 1
	print(index)
	if index > 2 and index != 0:
		index = 0
		for Leg in Legs:
			Leg.visible = false
		Legs[0].visible = true
	else:
		for Leg in Legs:
			if Legs[(index - 1)].visible == true:
				Legs[(index - 1)].visible = false
			Legs[index].visible = true


func _on_main_change_to_legs_1():
	for Leg in Legs:
		Leg.visible = false
	Legs[0].visible = true


func _on_main_change_to_legs_2():
	for Leg in Legs:
		Leg.visible = false
	Legs[1].visible = true


func _on_main_change_to_legs_3():
	for Leg in Legs:
		Leg.visible = false
	Legs[2].visible = true


func _on_check_button_toggled(toggled_on: bool):
	if toggled_on:
		$"Racoon Legs".self_modulate = Color(1, 0, 0)
		$"Bull Legs".self_modulate = Color(1, 0, 0)
		$"Horse Legs".self_modulate = Color(1, 0, 0)
	else:
		$"Racoon Legs".self_modulate = Color(1, 1, 1)
		$"Bull Legs".self_modulate = Color(1, 1, 1)
		$"Horse Legs".self_modulate = Color(1, 1, 1)

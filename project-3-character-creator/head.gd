extends Node2D
var heads = []
var index = 0
var customization = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	heads.append($"Racoon Head")
	heads.append($"Bull Head")
	heads[1].visible = false


func _on_head_button_1_pressed():
	index -= 1
	customization += 1
	print(index)
	for head in heads:
		if heads[(index + 1)].visible == true:
			heads[(index + 1)].visible = false
	heads[index].visible = true
	if index == -1 and index != 0:
		index += 1
		customization = 1
		for head in heads:
			head.visible = false
		heads[0].visible = true


func _on_head_button_2_pressed():
	index += 1
	customization += 1
	print(index)
	for head in heads:
		if heads[(index - 1)].visible == true:
			heads[(index - 1)].visible = false
	heads[index].visible = true
	if index == 1 and index != 0:
		index -= 2
		customization = 1
		for head in heads:
			head.visible = false
		heads[0].visible = true

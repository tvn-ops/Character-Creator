extends Node2D
var Torsos = []
var index = 0
var customization = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	Torsos.append($RacoonTorso)
	Torsos.append($BullTorso)
	for Torso in Torsos:
		Torso.visible = false
	Torsos[0].visible = true

func _on_torso_button_1_pressed():
	index -= 1
	print(index)
	for Torso in Torsos:
		if Torsos[(index + 1)].visible == true:
			Torsos[(index + 1)].visible = false
		Torsos[index].visible = true
	if index == -1 and index != 0:
		index += 1
		for Torso in Torsos:
			Torso.visible = false
		Torsos[0].visible = true
	else:
		pass


func _on_torso_button_2_pressed():
	index += 1
	print(index)
	for Torso in Torsos:
		if Torsos[(index - 1)].visible == true:
			Torsos[(index - 1)].visible = false
		Torsos[index].visible = true
	if index == 1 and index != 0:
		index -= 2
		for Torso in Torsos:
			Torso.visible = false
		Torsos[0].visible = true

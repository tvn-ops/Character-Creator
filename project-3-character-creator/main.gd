extends Node2D
var head_count = $Heads.customization
var torso_count = $Torsos.customization
var legs_count = $Legs.customization
var options = ""
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	options.append(str(head_count))
	options.append(str(torso_count))
	options.append(str(legs_count))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func process(_delta: float):
	$"Customization String".set_text(options)

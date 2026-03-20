extends Node2D
var options = ""
var saved = ""
#var head_customization = $Head.customization
#var torso_customization = $Torsos.customization
#var legs_customization = $Legs.customization
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func process(_delta: float):
	$"Customization String".set_text(options)


func _on_save_pressed():
	saved = options

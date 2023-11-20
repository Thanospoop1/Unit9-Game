extends Control

onready var luight = $SpotLight
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	pass


func _on_HSlider_value_changed(value):
	luight.light_energy = (value * 0.2)

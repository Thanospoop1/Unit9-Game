extends Spatial

onready var water = $station/test_tube01/CSGCylinder
onready var light = $Control/Light/SpotLight
onready var light_label = $Control/Floats/Light/Light_label
onready var water_label = $Control/Floats/water/Water_label
onready var temp_label = $Control/Floats/Temp/temp_label

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

#49.462

func _on_waterslider_value_changed(value):
	water.height = value
	water_label.text = str(round(value))

func _on_Tempslider_value_changed(value):
	temp_label.text = str(round(value))


func _on_Lightslider_value_changed(value):
	light.light_energy = (value * 0.2)
	light_label.text = str(round(value))

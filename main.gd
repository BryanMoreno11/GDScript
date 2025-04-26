extends Node

#Variables
@onready var label= $Label
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	label.text="Never see it coming"
	
func _input(event):
	print("El evento es ", event)
	if event.is_action_pressed("my_action"):
		label.modulate=Color.RED
	if event.is_action_released("my_action"):
		label.modulate= Color.WHITE

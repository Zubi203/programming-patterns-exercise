extends Node

@onready var light_1 = $"../Light"
@onready var light_2 = $"../Light2"
@onready var light_3 = $"../Light3"
@onready var light_4 = $"../Light4"
@onready var light_5 = $"../Light5"

func _process(_delta):
	if Input.is_action_just_pressed("ui_up"):
		light_1.turn_on()
		light_2.turn_on()
		light_3.turn_on()
		light_4.turn_on()
		light_5.turn_on()
	
	if Input.is_action_just_pressed("ui_down"):
		light_1.turn_off()
		light_2.turn_off()
		light_3.turn_off()
		light_4.turn_off()
		light_5.turn_off()

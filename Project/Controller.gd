extends "res://Parameters.gd"

var levelOfHydration
var UpdateHydration = 50
# this is a temp value
var time = 0
var time_mult = 1.0
var paused = false

func _ready():
	return true
	
func _process(delta):
	levelOfHydration = UpdateHydration - hydrationModifier
	print(levelOfHydration)
	#assign labels
	#get_node("Hydration").set_text(levelOfHydration)
	#get_node("TimeSinceStart").set_text(time)
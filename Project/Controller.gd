extends "res://Parameters.gd"

var levelOfHydration = 0
# this is a temp value
var time_mult = 1.0
var paused = false
var lost = false

func _ready():
	return true
	
func _process(delta):
	if stormActivated:
		ReduceStorm()
		var start_storm_when = is_storm_occuring()
		if (start_storm_when):
			start_storm()
			print("DROUGHT IS STARTING")
			DisplayHyd()
	
func HydrateLevel():
	levelOfHydration = 50 + drop
	return levelOfHydration
	
func DisplayHyd():
	var status = HydrateLevel()
	if status > 0:
        print("Hydration: " + str(status))
        return
	if status <= 0:
		lost = true
		print("You've lost! :(")
		get_tree().quit()
		return
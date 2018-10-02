extends Node

var timeToStorm
var drop = 0
var stormActivated = true

# for now storm will only occur once until I create loop
func _ready():
	var intensity = 10
	var time = 25
	var randNum = get_random_number()
	timeToStorm = randNum * 5000
	
	
# here we get a random val.
func get_random_number():
    randomize()
    return randi()%11

func ReduceStorm():
	timeToStorm = timeToStorm - 1
	
func _process(delta):
	pass

func is_storm_occuring():
	if timeToStorm < 0:
		return true
	else:
		return false
		
func start_storm():
	drop = -300
	stormActivated = false
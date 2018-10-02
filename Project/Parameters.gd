extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	var intensity = 10
	var time = 25
	var randNum = get_random_number()
	print(randNum)
	
	
# here we get a random val.
func get_random_number():
    randomize()
    return randi()%11

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

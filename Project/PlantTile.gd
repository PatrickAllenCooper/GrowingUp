extends "res://Controller.gd"

var _tileset
var dirt = true
var plantNum = 0
var plantRock = 0
var timer = 8 #wait 2 seconds

func _ready():
    _tileset = get_tileset()
    set_process_input(true)

func _input(event):
    var tile_pos = world_to_map(get_global_mouse_position())
    if tile_pos.y == 4:
        if event.is_action_pressed("mouse1"):
            set_cellv(tile_pos, _tileset.find_tile_by_name("Sprite"))
            drop = drop - 15
            plantNum = plantNum + 1
            DisplayHyd()
			
func _process(delta):
    if timer > 0:
        timer -= delta
        return
    else:
        drop = (drop + plantNum*3)
        timer = 8
        DisplayHyd()
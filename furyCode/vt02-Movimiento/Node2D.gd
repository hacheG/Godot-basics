extends Node2D

onready var img = get_node("img")
const SPEED = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	#img = get_node("img")
	set_process(true)

func _process(delta):
	var motion = Vector2()
	
	if (Input.is_action_pressed("ui_up")):
		motion += Vector2(0 , -1)
		var pos = get_node("img").position
		print(pos)
		#pos += motion * delta * SPEED
		get_node("img").position = pos + motion * delta * SPEED
	
	elif (Input.is_action_pressed("ui_down")):
		motion += Vector2(0 , 1)
		var pos = get_node("img").position
		print(pos)
		#pos += motion * delta * SPEED
		get_node("img").position = pos + motion * delta * SPEED

	elif (Input.is_action_pressed("ui_left")):
		motion += Vector2(-1 , 0)
		var pos = get_node("img").position
		print(pos)
		#pos += motion * delta * SPEED
		get_node("img").position = pos + motion * delta * SPEED
		
	elif (Input.is_action_pressed("ui_right")):
		motion += Vector2(1 , 0)
		var pos = get_node("img").position
		print(pos)
		#pos += motion * delta * SPEED
		get_node("img").position = pos + motion * delta * SPEED

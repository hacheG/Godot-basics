extends Node2D


var myRotate
# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	#var scale = Vector2(1 , 1)
	myRotate = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Input.is_action_pressed("ui_accept")):
		scale.x += 0.01
		scale.y += 0.01
		get_node("Sprite").scale = scale
	
	if (Input.is_action_pressed("ui_focus_next")):
		myRotate += 0.1
		get_node("Sprite").rotation = myRotate
	
	if (Input.is_action_pressed("ui_cancel")):
		myRotate = 0
		myRotate += 0.01
		rotate(deg2rad(myRotate))

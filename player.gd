extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velcidad_actual = Vector2()
var gravedad = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	velcidad_actual.y += gravedad * delta
	move_and_collide(velcidad_actual)


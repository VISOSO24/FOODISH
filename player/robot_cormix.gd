extends KinematicBody2D

# Declare member variables here:

export(int) var velosidad : int = 100
var dir : int = 1
var aceleracion : int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta): 	
	# Limites de la rotacion
	if self.global_position.x < -20 || self.global_position.x > 1024:
		dir *= -1;
	
	# Rotar sprite
	if (dir == -1):
		$aspr_robot.flip_h = true
	else:
		$aspr_robot.flip_h = false
		
	# Mover
	aceleracion = dir * velosidad * delta
	self.global_position += Vector2(aceleracion, 0)
	
	pass

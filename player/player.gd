extends KinematicBody2D

const derecha : int = 1
const izquierda : int = -1

export var speed : int = 4

"""
SOLO SE EJECUTA UNA VEZ AL PRESIONAR UNA TECLA
func _input(event):
	if event.is_action_pressed("mover_derecha"):
		position.x = position.x + speed
	if event.is_action_pressed("mover_izquierda"):
		position.x = position.x - speed
"""

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):		
	if Input.is_action_pressed("mover_derecha"):
		$aspr_player.flip_h = false
		var movimiento : Vector2 = Vector2(speed, 0)
		move_and_collide(movimiento)
		$aspr_player.play("run")
	else:
		$aspr_player.play("inicial")
		
	if Input.is_action_pressed("mover_izquierda"):
		$aspr_player.flip_h = true
		var movimiento : Vector2 = Vector2(-speed, 0)
		move_and_collide(movimiento)
		$aspr_player.stop()
	else:
		$aspr_player.play("inicial")
		

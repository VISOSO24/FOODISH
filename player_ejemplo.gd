extends KinematicBody2D

export var speed : int = 4

func _process(delta):
	if Input.is_action_pressed("mover_derecha"):
		$aspr_player_ejemplo.flip_h = false
		var movimiento : Vector2 = Vector2(speed, 0)
		move_and_collide(movimiento)
		$aspr_player_ejemplo.play("run")
	else:
		$aspr_player_ejemplo.stop()
	
	if Input.is_action_pressed("mover_izquierda"):
		$aspr_player_ejemplo.flip_h = true
		var movimiento : Vector2 = Vector2(-speed, 0)
		move_and_collide(movimiento)
		$aspr_player_ejemplo.play("run")
		

extends CharacterBody2D
var velocidad = 20000;

func _physics_process(delta: float) -> void:
	velocity = Vector2(0,0)
	if Input.is_action_pressed("w"):
		velocity.y = (delta * -velocidad)
		$AnimationPlayer.play("moverse",1.0)
	if Input.is_action_pressed("s"):
		velocity.y = (delta * velocidad)
		$AnimationPlayer.play("moverse",1.0)
	if Input.is_action_pressed("a"):
		velocity.x = (delta * -velocidad)
		$AnimationPlayer.play("moverse",1.0)
	if Input.is_action_pressed("d"):
		velocity.x = (delta * velocidad)
		$AnimationPlayer.play("moverse",1.0)
	if velocity.x == 0 and velocity.y == 0 :
		$AnimationPlayer.play("quieto", 0.3)
	move_and_slide()

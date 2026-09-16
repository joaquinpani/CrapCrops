extends CharacterBody2D
var velocidad = 100;

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("s"):
		$".".position.y = $".".position.y + (delta * velocidad)
	if Input.is_action_pressed("w"):
		$".".position.y = $".".position.y - (delta * velocidad)
	if Input.is_action_pressed("a"):
		$".".position.x = $".".position.x - (delta * velocidad)
	if Input.is_action_pressed("d"):
		$".".position.x = $".".position.x + (delta * velocidad)

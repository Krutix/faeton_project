extends CharacterBody2D

var baseSpeed = 20
var multSpeed = 1024
var direction: Vector2 = Vector2(0,0)

func _physics_process(delta: float) -> void:
	look_at(get_global_mouse_position())
	player_movement(delta)

func player_movement(delta: float) -> void:
	direction = Vector2(0, 0)

	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1
	if Input.is_action_pressed("ui_down"):
		direction.y += 1

	velocity = direction.normalized() * baseSpeed * multSpeed * delta

	move_and_slide()

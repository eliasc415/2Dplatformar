extends Area2D

@export var Move_direction : Vector2
@export var move_speed : float = 20

@onready var start_pos : Vector2 = global_position
@onready var target_pos : Vector2 = global_position + Move_direction

func _physics_process(delta):
	global_position = global_position.move_toward(target_pos, move_speed * delta)
	
	if global_position == target_pos:
		if target_pos == start_pos:
			target_pos = start_pos + Move_direction
		else:
			target_pos = start_pos

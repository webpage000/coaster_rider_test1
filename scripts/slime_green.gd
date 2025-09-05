extends Node2D
# 速度
const SPEED: int = 60
# 运动方向
var direction = 1

@onready var right_ray_cast_2d: RayCast2D = $RightRayCast2D
@onready var left_ray_cast_2d: RayCast2D = $LeftRayCast2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if left_ray_cast_2d.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	
	if right_ray_cast_2d.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true

	
	position.x += direction * SPEED * delta

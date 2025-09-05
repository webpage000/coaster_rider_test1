extends Area2D

@onready var game_manager = %GameManager

# 玩家进入碰撞区域
func _player_on_body_entered(body: Node2D) -> void:
	queue_free();
	game_manager.gain_coin()

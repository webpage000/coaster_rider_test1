extends Area2D

# 玩家进入碰撞区域
func _player_on_body_entered(body: Node2D) -> void:
	queue_free();
	pass # Replace with function body.

extends Area2D

@onready var game_manager = %GameManager
# 动画播放器
@onready var animation_player: AnimationPlayer = $AnimationPlayer

# 玩家进入碰撞区域
func _player_on_body_entered(body: Node2D) -> void:
	game_manager.gain_coin()
	# 在动画播放器中，实现硬币隐藏、禁用碰撞、音效播放，以及延迟释放
	animation_player.play("pickup")
	
	# 用代码实现
	#$PickupSound.play()
	#$CollisionShape2D.disabled = true
	#visible = false
	#await get_tree().create_timer(1).timeout
	#queue_free()
	
	

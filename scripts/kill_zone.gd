extends Area2D

@onready var timer: Timer = $Timer

# 死亡区域碰撞后
func _on_body_entered(body: Node2D) -> void:
	# 启动计时器
	timer.start();
	body.get_node('CollisionShape2D').queue_free()
	Engine.time_scale = 0.5
	# 也可以不用新建一个节点，而是使用临时计时器，这样可以节省资源
	#var scree_tree: SceneTree = get_tree()
	#await scree_tree.create_timer(0.6).timeout
	#scree_tree.reload_current_scene()

# 计时器时间到了后，重置整个场景
func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()

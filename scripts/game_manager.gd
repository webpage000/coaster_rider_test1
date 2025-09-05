extends Node

var coins = 0
@onready var coin_label: Label = %CoinLabel

# 获得分数
func gain_coin():
	coins += 1
	coin_label.text = "Coins " + str(coins)

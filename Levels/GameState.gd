extends Node2D

var lives  = 3
var coins = 0
var target_coins = 20

func _ready():
	add_to_group("gamestate")
	update_GUI()

func hurt():
	lives -= 1
	$Player.hurt() #calling the hurt function in player.gd script
	
	print(lives)
	
	if lives < 0:
		gameover()
	
	update_GUI()
	
func update_GUI():
	get_tree().call_group("GUI" , "update_GUI", lives, coins) #group method variable

func coin_up():
	coins += 1
	update_GUI()
	
	var is_target_met = coins % target_coins == 0
	if is_target_met:
		life_up()
			
func life_up():
	lives += 1
	update_GUI()
	
func gameover():
	get_tree().change_scene("res://Levels/GameOver.tscn")
	
func victory():
	get_tree().change_scene("res://Levels/Victory.tscn")
	

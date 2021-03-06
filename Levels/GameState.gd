extends Node2D

var lives  = 3

func _ready():
	add_to_group("gamestate")

func hurt():
	lives -= 1
	$Player.hurt() #calling the hurt function in player.gd script
	
	print(lives)
	
	if lives < 0:
		gameover()
	
func gameover():
	get_tree().change_scene("res://Levels/GameOver.tscn")
	
	

extends Node2D

var lives  = 30

func _ready():
	add_to_group("gamestate")
	update_lives()

func hurt():
	lives -= 1
	$Player.hurt() #calling the hurt function in player.gd script
	
	print(lives)
	
	if lives < 0:
		gameover()
	
	update_lives()
	
func update_lives():
	get_tree().call_group("GUI" , "update_lives", lives) #group method variable
	
func gameover():
	get_tree().change_scene("res://Levels/GameOver.tscn")
	

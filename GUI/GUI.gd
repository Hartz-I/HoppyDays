extends CanvasLayer


func update_lives(lives):
	$Control/TextureRect/HBoxContainer/LifeCount.text = str(lives)

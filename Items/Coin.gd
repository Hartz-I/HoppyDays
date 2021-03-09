extends Node2D

var taken = false

func _on_Area2D_body_entered(body):
	if not taken:
		taken = true
		$AnimationPlayer.play("die")
		$AudioStreamPlayer.play()
		
		get_tree().call_group("gamestate" , "coin_up")
	
func remove_coin():
	queue_free()

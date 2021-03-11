extends Area2D

var invincible = false

func _on_SpikesTop_body_entered(body):
	#if body has method hurt: //check for if there is the mathod
	#use layering for who collides with who
	#body.hurt()
	
	#in stead we'll use group
	get_tree().call_group("gamestate" , "hurt") #calling hurt fucntion from the group gamestate. script in level1 node


func _on_Timer_timeout():
	pass # Replace with function body.

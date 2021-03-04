extends Area2D



func _on_SpikesTop_body_entered(body):
	#if body has method hurt: //check for if there is the mathod
	#use layering for who collides with who
	body.hurt()

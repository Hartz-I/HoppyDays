extends AnimatedSprite

func _on_Player_animate(vel):
	#animatedSprite - > frame -> spriteframe -> click again to get animator!
	if vel.y<0:
		play("jump")	 #play the jump animation
	elif vel.x>0:
		play("walk_right")
		flip_h = false
	elif vel.x<0:
		play("walk_left")
		flip_h = true
	else: 
		play("idle")

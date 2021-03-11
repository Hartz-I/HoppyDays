extends Node2D

var timeout = false

func _process(delta):
	if $Sprite/RayCast2D.is_colliding(): #if something crosses the line
		fire()
		
func fire():
	if not timeout:
		#loading an instance of the lightning
		$Sprite/RayCast2D.add_child(load("res://Hazards/Lightning.tscn").instance())
		$Sprite/Timer.start()
		timeout = true #do once then stop!
		

func _on_Timer_timeout():
	timeout = false # does when the time runs out

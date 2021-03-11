extends Node2D

var SPEED = 300

func _ready():
	set_as_toplevel(true) #doesn't depend on parent(hence won't move with parent)
	global_position = get_parent().global_position #start where the parent was
	
func _process(delta): #moving the lightning
	position.y += SPEED * delta
	manage_collision()
	
func manage_collision():
	var collider = $Area2D.get_overlapping_bodies() #gets the body that over laps
	
	for object in collider:
		if object.name == "Player":
			get_tree().call_group("gamestate" , "hurt")
		queue_free()


func _on_VisibilityNotifier2D_screen_exited():
	queue_free() # Replace with function body.

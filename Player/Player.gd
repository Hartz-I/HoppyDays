extends KinematicBody2D

var vel = Vector2(0,0) #a vector to run on move and slide
const SPEED = 1500 #a constant speed
const GRAVITY = 300
const UP = Vector2(0,-1) #used to tell this is up or down
const JUMP_SPEED = 4000

signal  animate

func _physics_process(delta): #for processing every frame. delta is time
	#vel.y += GRAVITY #BUT putting it increases every frame! not while falling
	#so we use apply gravity function
	apply_gravity()
	
	jump()
	
	move()
	
	animate()
	
	
	move_and_slide(vel , UP) #move and slide on surface by how much value given in the vector
	
func apply_gravity():
	if is_on_floor(): #after defining up. see if it's on floor
		vel.y = 0
	elif is_on_ceiling():
		vel.y = 1
	else:
		vel.y += GRAVITY
		
func jump():
	if Input.is_action_pressed("jump") and is_on_floor(): #jump when pressed. and holding it won't work!
		vel.y -= JUMP_SPEED
		
func move():
	#from project settings-> input map make left and right
	if Input.is_action_pressed("left"): #if the right key is pressed
		vel.x= -SPEED
	elif Input.is_action_pressed("right"):
		vel.x= SPEED
	else:
		vel.x=0 #to make it stop

	if Input.is_action_pressed("left") and Input.is_action_pressed("right"):
		vel.x=0

func animate():
	
	emit_signal("animate", vel)
	
#	#animatedSprite - > frame -> spriteframe -> click again to get animator!
#	if vel.y<0:
#		$PlayerAnimation.play("jump")	 #play the jump animation
#	elif vel.x>0:
#		$PlayerAnimation.play("walk_right")
#		$PlayerAnimation.flip_h = false
#	elif vel.x<0:
#		$PlayerAnimation.play("walk_left")
#		$PlayerAnimation.flip_h = true
#	else: 
#		$PlayerAnimation.play("idle")
	








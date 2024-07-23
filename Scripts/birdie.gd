extends CharacterBody2D

const JUMP_VELOCITY = -100.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta * 1/3

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and Engine.time_scale == 1:
		velocity.y = JUMP_VELOCITY
		$Flap.play()

	move_and_slide()

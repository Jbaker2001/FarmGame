extends CharacterBody2D


var speed = 60.0

func _physics_process(delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var inputVector = Input.get_vector("left", "right", "up", "down")
	if inputVector:
		velocity = inputVector * speed
		move_and_slide()

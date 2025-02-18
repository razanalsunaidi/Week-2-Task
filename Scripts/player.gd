extends CharacterBody2D

@export var speed : float = 400
@export var gravity : float = 500
@export var jump_force : float = -400

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	
	var input_direction : float = Input.get_axis("player_left", "player_right")
	velocity.x = input_direction * speed

	if not is_on_floor():
		velocity.y += gravity * delta
	
	if is_on_floor():
		if Input.is_action_just_pressed("player_jump"):
			velocity.y = jump_force
	
	move_and_slide()

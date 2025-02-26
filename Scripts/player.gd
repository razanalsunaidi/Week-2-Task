

extends CharacterBody2D
@onready var color_rect : ColorRect = $ColorRect
@export var speed : float = 10
@export var gravity : float = 300
@export var jump : float = -300
#Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


#Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var input_direction : float = Input.get_axis("player_left", "player_right")
	
	if input_direction:
		color_rect.color = Color.GREEN
	else:
		color_rect.color = Color.WHITE
			
	velocity.x += input_direction * speed 
	
	if ! is_on_floor():
		velocity.y += gravity * delta
	
	if is_on_floor():
		if Input.is_action_just_pressed("player_jump"):
			velocity.y = jump
		
	move_and_slide()

extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.



func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://Scenes/Level_2.tscn")

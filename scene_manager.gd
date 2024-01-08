extends Control

var current_scene : Node

func _ready():
	var first_scene = load("res://main_menu.tscn").instantiate()
	change_scene(first_scene)

func change_scene(desired_scene):
	if current_scene: # If a current scene exists...
		current_scene.queue_free()
	add_child(desired_scene)
	current_scene = desired_scene

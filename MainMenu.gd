extends PanelContainer

@onready var scene_manager = get_parent()


func _on_play_pressed():
	var new_scene = load("res://level_one.tscn").instantiate()
	scene_manager.change_scene(new_scene)


func _on_quit_pressed():
	get_tree().quit()



extends CanvasLayer

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/canvas_layer.tscn")

func _on_exit_pressed() -> void:
	$ExitConf.visible = true
	$Blocker.visible = true

func _on_yes_pressed() -> void:
	get_tree().quit()

func _on_no_pressed() -> void:
	$ExitConf.visible = false
	$Blocker.visible = false

func _on_load_pressed() -> void:
	$Menu.visible = true
	get_tree().paused = true
	$Menu.menu.current_tab = 1

func _on_settings_pressed() -> void:
	$Menu.visible = true
	get_tree().paused = true
	$Menu.menu.current_tab = 2

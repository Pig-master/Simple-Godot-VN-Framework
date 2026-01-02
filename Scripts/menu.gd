extends CanvasLayer

@onready var menu: TabContainer = $PanelContainer/HBoxContainer/TabContainer

func _ready():
	for s in $PanelContainer/HBoxContainer/TabContainer/Saves.get_children(): #Gets each Vbox of the saves
		var path:String = ('user://save'+str(s.get_index()+1)+'.png')
		if FileAccess.file_exists(path): #Checks if it has a png
			s.get_child(0).texture_normal = ImageTexture.create_from_image(Image.load_from_file(path))
	
	for l in $PanelContainer/HBoxContainer/TabContainer/Loading.get_children():
		var path:String = ('user://save'+str(l.get_index()+1)+'.png')
		if FileAccess.file_exists(path):
			l.get_child(0).texture_normal = ImageTexture.create_from_image(Image.load_from_file(path))

func _on_resume_pressed() -> void:
	get_tree().paused = false
	$".".visible = false

func _on_menu_menu_pressed() -> void:
	get_tree().paused = true
	$".".visible = true
	menu.current_tab = 2

func _on_quit_pressed() -> void:
	get_tree().quit()

func _on_save_pressed() -> void:
	menu.current_tab = 0

func _on_load_pressed() -> void:
	menu.current_tab = 1

func _on_options_pressed() -> void:
	menu.current_tab = 2

func _on_win_pressed() -> void:
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)

func _on_full_pressed() -> void:
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)

func _on_back_pressed() -> void:
	if $"..".scenes != [] and $"..".ended == false and $"..".loaded_scene.can_go_back == true and not $"../AnimationPlayer".is_playing():
		var scene = $"..".loaded_scene
		$"..".loaded_scene = $"..".scenes.pop_back()
		if scene.song != $"..".loaded_scene.song:
			if $"../Music".volume_db == 0:
				$"../Music".stream = $"..".loaded_scene.song
				$"../Music".play()
			else:
				$"../Music2".stream = $"..".loaded_scene.song
				$"../Music2".play()
		$"../Bg/Bg".texture = $"..".loaded_scene.bg
		$"..".tick = 0
		$"..".new_scene()

func _on_skip_toggled(toggled_on: bool) -> void:
	if toggled_on and $"..".loaded_scene.options == 0:
		$"../MainBox/VBoxContainer/Menu/Skip/skip".start()
	else:
		$"../MainBox/VBoxContainer/Menu/Skip/skip".stop()

func _on_auto_toggled(toggled_on: bool) -> void:
	if toggled_on and $"..".loaded_scene.options == 0:
		$"../Timer".start()
		$"..".auto_on = true
		
	else:
		$"../Timer".stop()
		$"..".auto_on = false

func _on_save_menu_pressed() -> void:
	get_tree().paused = true
	$".".visible = true
	menu.current_tab = 0

func _on_load_menu_pressed() -> void:
	get_tree().paused = true
	$".".visible = true
	menu.current_tab = 1

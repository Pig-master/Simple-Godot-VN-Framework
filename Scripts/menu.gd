extends CanvasLayer

func _ready():
	#region Saving and Loading save icons
	if FileAccess.file_exists("user://save1.png"):
		$PanelContainer/HBoxContainer/TabContainer/Saves/VBoxContainer/S1.texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save1.png'))
		$PanelContainer/HBoxContainer/TabContainer/Loading/VBoxContainer/L1.texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save1.png'))
	if FileAccess.file_exists("user://save2.png"):
		$PanelContainer/HBoxContainer/TabContainer/Saves/VBoxContainer2/S2.texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save2.png'))
		$PanelContainer/HBoxContainer/TabContainer/Loading/VBoxContainer2/L2.texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save2.png'))
	if FileAccess.file_exists("user://save3.png"):
		$PanelContainer/HBoxContainer/TabContainer/Saves/VBoxContainer3/S3.texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save3.png'))
		$PanelContainer/HBoxContainer/TabContainer/Loading/VBoxContainer3/L3.texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save3.png'))
	if FileAccess.file_exists("user://save4.png"):
		$PanelContainer/HBoxContainer/TabContainer/Saves/VBoxContainer4/S4.texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save4.png'))
		$PanelContainer/HBoxContainer/TabContainer/Loading/VBoxContainer4/L4.texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save4.png'))
	if FileAccess.file_exists("user://save5.png"):
		$PanelContainer/HBoxContainer/TabContainer/Saves/VBoxContainer5/S5.texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save5.png'))
		$PanelContainer/HBoxContainer/TabContainer/Loading/VBoxContainer5/L5.texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save5.png'))
	if FileAccess.file_exists("user://save6.png"):
		$PanelContainer/HBoxContainer/TabContainer/Saves/VBoxContainer6/S6.texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save6.png'))
		$PanelContainer/HBoxContainer/TabContainer/Loading/VBoxContainer6/L6.texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save6.png'))
	if FileAccess.file_exists("user://save7.png"):
		$PanelContainer/HBoxContainer/TabContainer/Saves/VBoxContainer7/S7.texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save7.png'))
		$PanelContainer/HBoxContainer/TabContainer/Loading/VBoxContainer7/L7.texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save7.png'))
	if FileAccess.file_exists("user://save8.png"):
		$PanelContainer/HBoxContainer/TabContainer/Saves/VBoxContainer8/S8.texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save8.png'))
		$PanelContainer/HBoxContainer/TabContainer/Loading/VBoxContainer8/L8.texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save8.png'))
	if FileAccess.file_exists("user://save9.png"):
		$PanelContainer/HBoxContainer/TabContainer/Saves/VBoxContainer9/S9.texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save9.png'))
		$PanelContainer/HBoxContainer/TabContainer/Loading/VBoxContainer9/L9.texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save9.png'))
	if FileAccess.file_exists("user://save10.png"):
		$PanelContainer/HBoxContainer/TabContainer/Saves/VBoxContainer10/S10.texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save10.png'))
		$PanelContainer/HBoxContainer/TabContainer/Loading/VBoxContainer10/L10.texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save10.png'))
	if FileAccess.file_exists("user://save11.png"):
		$PanelContainer/HBoxContainer/TabContainer/Saves/VBoxContainer11/S11.texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save11.png'))
		$PanelContainer/HBoxContainer/TabContainer/Loading/VBoxContainer11/L11.texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save11.png'))
	if FileAccess.file_exists("user://save12.png"):
		$PanelContainer/HBoxContainer/TabContainer/Saves/VBoxContainer12/S12.texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save12.png'))
		$PanelContainer/HBoxContainer/TabContainer/Loading/VBoxContainer12/L12.texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save12.png'))
#endregion

func _on_resume_pressed() -> void:
	get_tree().paused = false
	$".".visible = false

func _on_menu_menu_pressed() -> void:
	get_tree().paused = true
	$".".visible = true
	$"."/PanelContainer/HBoxContainer/TabContainer.current_tab = 2

func _on_quit_pressed() -> void:
	get_tree().quit()

func _on_save_pressed() -> void:
	$"."/PanelContainer/HBoxContainer/TabContainer.current_tab = 0

func _on_load_pressed() -> void:
	$"."/PanelContainer/HBoxContainer/TabContainer.current_tab = 1

func _on_options_pressed() -> void:
	$"."/PanelContainer/HBoxContainer/TabContainer.current_tab = 2

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
	$"."/PanelContainer/HBoxContainer/TabContainer.current_tab = 0

func _on_load_menu_pressed() -> void:
	get_tree().paused = true
	$".".visible = true
	$"."/PanelContainer/HBoxContainer/TabContainer.current_tab = 1

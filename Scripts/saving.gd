extends Node

func _on_l_1_pressed() -> void:
	var save = ResourceLoader.load("user://save1.tres")
	if save:
		$"..".loaded_scene = save.scene
		$"..".scenes = save.scenes
		$"../Bg/Bg".texture = save.bg
		$"..".can_advance = save.can_advance
		if $"../Music".volume_db == 0:
			$"../Music".stream = $"..".loaded_scene.song
			$"../Music".play()
		else:
			$"../Music2".stream = $"..".loaded_scene.song
			$"../Music2".play()
		$"..".new_scene()

func _on_l_4_pressed() -> void:
	var save = ResourceLoader.load("user://save4.tres")
	if save:
		$"..".loaded_scene = save.scene
		$"..".scenes = save.scenes
		$"../Bg/Bg".texture = save.bg
		$"..".can_advance = save.can_advance
		if $"../Music".volume_db == 0:
			$"../Music".stream = $"..".loaded_scene.song
			$"../Music".play()
		else:
			$"../Music2".stream = $"..".loaded_scene.song
			$"../Music2".play()
		$"..".new_scene()

func _on_l_3_pressed() -> void:
	var save = ResourceLoader.load("user://save3.tres")
	if save:
		$"..".loaded_scene = save.scene
		$"..".scenes = save.scenes
		$"../Bg/Bg".texture = save.bg
		$"..".can_advance = save.can_advance
		if $"../Music".volume_db == 0:
			$"../Music".stream = $"..".loaded_scene.song
			$"../Music".play()
		else:
			$"../Music2".stream = $"..".loaded_scene.song
			$"../Music2".play()
		$"..".new_scene()

func _on_l_2_pressed() -> void:
	var save = ResourceLoader.load("user://save2.tres")
	if save:
		$"..".loaded_scene = save.scene
		$"..".scenes = save.scenes
		$"../Bg/Bg".texture = save.bg
		$"..".can_advance = save.can_advance
		if $"../Music".volume_db == 0:
			$"../Music".stream = $"..".loaded_scene.song
			$"../Music".play()
		else:
			$"../Music2".stream = $"..".loaded_scene.song
			$"../Music2".play()
		$"..".new_scene()

func _on_l_8_pressed() -> void:
	var save = ResourceLoader.load("user://save8.tres")
	if save:
		$"..".loaded_scene = save.scene
		$"..".scenes = save.scenes
		$"../Bg/Bg".texture = save.bg
		$"..".can_advance = save.can_advance
		if $"../Music".volume_db == 0:
			$"../Music".stream = $"..".loaded_scene.song
			$"../Music".play()
		else:
			$"../Music2".stream = $"..".loaded_scene.song
			$"../Music2".play()
		$"..".new_scene()

func _on_l_7_pressed() -> void:
	var save = ResourceLoader.load("user://save7.tres")
	if save:
		$"..".loaded_scene = save.scene
		$"..".scenes = save.scenes
		$"../Bg/Bg".texture = save.bg
		$"..".can_advance = save.can_advance
		if $"../Music".volume_db == 0:
			$"../Music".stream = $"..".loaded_scene.song
			$"../Music".play()
		else:
			$"../Music2".stream = $"..".loaded_scene.song
			$"../Music2".play()
		$"..".new_scene()

func _on_l_6_pressed() -> void:
	var save = ResourceLoader.load("user://save6.tres")
	if save:
		$"..".loaded_scene = save.scene
		$"..".scenes = save.scenes
		$"../Bg/Bg".texture = save.bg
		$"..".can_advance = save.can_advance
		if $"../Music".volume_db == 0:
			$"../Music".stream = $"..".loaded_scene.song
			$"../Music".play()
		else:
			$"../Music2".stream = $"..".loaded_scene.song
			$"../Music2".play()
		$"..".new_scene()

func _on_l_5_pressed() -> void:
	var save = ResourceLoader.load("user://save5.tres")
	if save:
		$"..".loaded_scene = save.scene
		$"..".scenes = save.scenes
		$"../Bg/Bg".texture = save.bg
		$"..".can_advance = save.can_advance
		if $"../Music".volume_db == 0:
			$"../Music".stream = $"..".loaded_scene.song
			$"../Music".play()
		else:
			$"../Music2".stream = $"..".loaded_scene.song
			$"../Music2".play()
		$"..".new_scene()

func _on_l_12_pressed() -> void:
	var save = ResourceLoader.load("user://save12.tres")
	if save:
		$"..".loaded_scene = save.scene
		$"..".scenes = save.scenes
		$"../Bg/Bg".texture = save.bg
		$"..".can_advance = save.can_advance
		if $"../Music".volume_db == 0:
			$"../Music".stream = $"..".loaded_scene.song
			$"../Music".play()
		else:
			$"../Music2".stream = $"..".loaded_scene.song
			$"../Music2".play()
		$"..".new_scene()

func _on_l_11_pressed() -> void:
	var save = ResourceLoader.load("user://save11.tres")
	if save:
		$"..".loaded_scene = save.scene
		$"..".scenes = save.scenes
		$"../Bg/Bg".texture = save.bg
		$"..".can_advance = save.can_advance
		if $"../Music".volume_db == 0:
			$"../Music".stream = $"..".loaded_scene.song
			$"../Music".play()
		else:
			$"../Music2".stream = $"..".loaded_scene.song
			$"../Music2".play()
		$"..".new_scene()

func _on_l_10_pressed() -> void:
	var save = ResourceLoader.load("user://save10.tres")
	if save:
		$"..".loaded_scene = save.scene
		$"..".scenes = save.scenes
		$"../Bg/Bg".texture = save.bg
		$"..".can_advance = save.can_advance
		if $"../Music".volume_db == 0:
			$"../Music".stream = $"..".loaded_scene.song
			$"../Music".play()
		else:
			$"../Music2".stream = $"..".loaded_scene.song
			$"../Music2".play()
		$"..".new_scene()

func _on_l_9_pressed() -> void:
	var save = ResourceLoader.load("user://save9.tres")
	if save:
		$"..".loaded_scene = save.scene
		$"..".scenes = save.scenes
		$"../Bg/Bg".texture = save.bg
		$"..".can_advance = save.can_advance
		if $"../Music".volume_db == 0:
			$"../Music".stream = $"..".loaded_scene.song
			$"../Music".play()
		else:
			$"../Music2".stream = $"..".loaded_scene.song
			$"../Music2".play()
		$"..".new_scene()

func _on_s_1_pressed() -> void:
	$"../Menu".visible = false
	await get_tree().create_timer(0.025).timeout
	get_viewport().get_texture().get_image().save_png('user://save1.png')
	$"../Menu/PanelContainer/HBoxContainer/TabContainer/Saves/VBoxContainer/S1".texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save1.png'))
	$"../Menu/PanelContainer/HBoxContainer/TabContainer/Loading/VBoxContainer/L1".texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save1.png'))
	await get_tree().create_timer(0.025).timeout
	$"../Menu".visible = true
	var saved_game_1:SaveGame = SaveGame.new()
	saved_game_1.scene = $"..".loaded_scene
	saved_game_1.scenes = $"..".scenes
	saved_game_1.bg = $"..".loaded_scene.bg
	saved_game_1.can_advance = $"..".can_advance
	ResourceSaver.save(saved_game_1, "user://save1.tres")

func _on_s_4_pressed() -> void:
	$"../Menu".visible = false
	await get_tree().create_timer(0.1).timeout
	get_viewport().get_texture().get_image().save_png('user://save4.png')
	$"../Menu/PanelContainer/HBoxContainer/TabContainer/Saves/VBoxContainer4/S4".texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save4.png'))
	$"../Menu/PanelContainer/HBoxContainer/TabContainer/Loading/VBoxContainer4/L4".texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save4.png'))
	await get_tree().create_timer(0.1).timeout
	$"../Menu".visible = true
	var saved_game_4:SaveGame = SaveGame.new()
	saved_game_4.scene = $"..".loaded_scene
	saved_game_4.scenes = $"..".scenes
	saved_game_4.bg = $"..".loaded_scene.bg
	saved_game_4.can_advance = $"..".can_advance
	ResourceSaver.save(saved_game_4, "user://save4.tres")

func _on_s_3_pressed() -> void:
	$"../Menu".visible = false
	await get_tree().create_timer(0.1).timeout
	get_viewport().get_texture().get_image().save_png('user://save3.png')
	$"../Menu/PanelContainer/HBoxContainer/TabContainer/Saves/VBoxContainer3/S3".texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save3.png'))
	$"../Menu/PanelContainer/HBoxContainer/TabContainer/Loading/VBoxContainer3/L3".texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save3.png'))
	await get_tree().create_timer(0.1).timeout
	$"../Menu".visible = true
	var saved_game_3:SaveGame = SaveGame.new()
	saved_game_3.scene = $"..".loaded_scene
	saved_game_3.scenes = $"..".scenes
	saved_game_3.bg = $"..".loaded_scene.bg
	saved_game_3.can_advance = $"..".can_advance
	ResourceSaver.save(saved_game_3, "user://save3.tres")

func _on_s_2_pressed() -> void:
	$"../Menu".visible = false
	await get_tree().create_timer(0.1).timeout
	get_viewport().get_texture().get_image().save_png('user://save2.png')
	$"../Menu/PanelContainer/HBoxContainer/TabContainer/Saves/VBoxContainer2/S2".texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save2.png'))
	$"../Menu/PanelContainer/HBoxContainer/TabContainer/Loading/VBoxContainer2/L2".texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save2.png'))
	await get_tree().create_timer(0.1).timeout
	$"../Menu".visible = true
	var saved_game_2:SaveGame = SaveGame.new()
	saved_game_2.scene = $"..".loaded_scene
	saved_game_2.scenes = $"..".scenes
	saved_game_2.bg = $"..".loaded_scene.bg
	saved_game_2.can_advance = $"..".can_advance
	ResourceSaver.save(saved_game_2, "user://save2.tres")

func _on_s_8_pressed() -> void:
	$"../Menu".visible = false
	await get_tree().create_timer(0.1).timeout
	get_viewport().get_texture().get_image().save_png('user://save8.png')
	$"../Menu/PanelContainer/HBoxContainer/TabContainer/Saves/VBoxContainer8/S8".texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save8.png'))
	$"../Menu/PanelContainer/HBoxContainer/TabContainer/Loading/VBoxContainer8/L8".texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save8.png'))
	await get_tree().create_timer(0.1).timeout
	$"../Menu".visible = true
	var saved_game_8:SaveGame = SaveGame.new()
	saved_game_8.scene = $"..".loaded_scene
	saved_game_8.scenes = $"..".scenes
	saved_game_8.bg = $"..".loaded_scene.bg
	saved_game_8.can_advance = $"..".can_advance
	ResourceSaver.save(saved_game_8, "user://save8.tres")

func _on_s_7_pressed() -> void:
	$"../Menu".visible = false
	await get_tree().create_timer(0.1).timeout
	get_viewport().get_texture().get_image().save_png('user://save7.png')
	$"../Menu/PanelContainer/HBoxContainer/TabContainer/Saves/VBoxContainer7/S7".texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save7.png'))
	$"../Menu/PanelContainer/HBoxContainer/TabContainer/Loading/VBoxContainer7/L7".texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save7.png'))
	await get_tree().create_timer(0.1).timeout
	$"../Menu".visible = true
	var saved_game_7:SaveGame = SaveGame.new()
	saved_game_7.scene = $"..".loaded_scene
	saved_game_7.scenes = $"..".scenes
	saved_game_7.bg = $"..".loaded_scene.bg
	saved_game_7.can_advance = $"..".can_advance
	ResourceSaver.save(saved_game_7, "user://save7.tres")

func _on_s_6_pressed() -> void:
	$"../Menu".visible = false
	await get_tree().create_timer(0.1).timeout
	get_viewport().get_texture().get_image().save_png('user://save6.png')
	$"../Menu/PanelContainer/HBoxContainer/TabContainer/Saves/VBoxContainer6/S6".texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save6.png'))
	$"../Menu/PanelContainer/HBoxContainer/TabContainer/Loading/VBoxContainer6/L6".texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save6.png'))
	await get_tree().create_timer(0.1).timeout
	$"../Menu".visible = true
	var saved_game_6:SaveGame = SaveGame.new()
	saved_game_6.scene = $"..".loaded_scene
	saved_game_6.scenes = $"..".scenes
	saved_game_6.bg = $"..".loaded_scene.bg
	saved_game_6.can_advance = $"..".can_advance
	ResourceSaver.save(saved_game_6, "user://save6.tres")

func _on_s_5_pressed() -> void:
	$"../Menu".visible = false
	await get_tree().create_timer(0.1).timeout
	get_viewport().get_texture().get_image().save_png('user://save5.png')
	$"../Menu/PanelContainer/HBoxContainer/TabContainer/Saves/VBoxContainer5/S5".texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save5.png'))
	$"../Menu/PanelContainer/HBoxContainer/TabContainer/Loading/VBoxContainer5/L5".texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save5.png'))
	await get_tree().create_timer(0.1).timeout
	$"../Menu".visible = true
	var saved_game_5:SaveGame = SaveGame.new()
	saved_game_5.scene = $"..".loaded_scene
	saved_game_5.scenes = $"..".scenes
	saved_game_5.bg = $"..".loaded_scene.bg
	saved_game_5.can_advance = $"..".can_advance
	ResourceSaver.save(saved_game_5, "user://save5.tres")

func _on_s_12_pressed() -> void:
	$"../Menu".visible = false
	await get_tree().create_timer(0.1).timeout
	get_viewport().get_texture().get_image().save_png('user://save12.png')
	$"../Menu/PanelContainer/HBoxContainer/TabContainer/Saves/VBoxContainer12/S12".texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save12.png'))
	$"../Menu/PanelContainer/HBoxContainer/TabContainer/Loading/VBoxContainer12/L12".texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save12.png'))
	await get_tree().create_timer(0.1).timeout
	$"../Menu".visible = true
	var saved_game_12:SaveGame = SaveGame.new()
	saved_game_12.scene = $"..".loaded_scene
	saved_game_12.scenes = $"..".scenes
	saved_game_12.bg = $"..".loaded_scene.bg
	saved_game_12.can_advance = $"..".can_advance
	ResourceSaver.save(saved_game_12, "user://save12.tres")

func _on_s_11_pressed() -> void:
	$"../Menu".visible = false
	await get_tree().create_timer(0.1).timeout
	get_viewport().get_texture().get_image().save_png('user://save11.png')
	$"../Menu/PanelContainer/HBoxContainer/TabContainer/Saves/VBoxContainer11/S11".texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save11.png'))
	$"../Menu/PanelContainer/HBoxContainer/TabContainer/Loading/VBoxContainer11/L11".texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save11.png'))
	await get_tree().create_timer(0.1).timeout
	$"../Menu".visible = true
	var saved_game_11:SaveGame = SaveGame.new()
	saved_game_11.scene = $"..".loaded_scene
	saved_game_11.scenes = $"..".scenes
	saved_game_11.bg = $"..".loaded_scene.bg
	saved_game_11.can_advance = $"..".can_advance
	ResourceSaver.save(saved_game_11, "user://save11.tres")

func _on_s_10_pressed() -> void:
	$"../Menu".visible = false
	await get_tree().create_timer(0.1).timeout
	get_viewport().get_texture().get_image().save_png('user://save10.png')
	$"../Menu/PanelContainer/HBoxContainer/TabContainer/Saves/VBoxContainer10/S10".texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save10.png'))
	$"../Menu/PanelContainer/HBoxContainer/TabContainer/Loading/VBoxContainer10/L10".texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save10.png'))
	await get_tree().create_timer(0.1).timeout
	$"../Menu".visible = true
	var saved_game_10:SaveGame = SaveGame.new()
	saved_game_10.scene = $"..".loaded_scene
	saved_game_10.scenes = $"..".scenes
	saved_game_10.bg = $"..".loaded_scene.bg
	saved_game_10.can_advance = $"..".can_advance
	ResourceSaver.save(saved_game_10, "user://save10.tres")

func _on_s_9_pressed() -> void:
	$"../Menu".visible = false
	await get_tree().create_timer(0.1).timeout
	get_viewport().get_texture().get_image().save_png('user://save9.png')
	$"../Menu/PanelContainer/HBoxContainer/TabContainer/Saves/VBoxContainer9/S9".texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save9.png'))
	$"../Menu/PanelContainer/HBoxContainer/TabContainer/Loading/VBoxContainer9/L9".texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save9.png'))
	await get_tree().create_timer(0.1).timeout
	$"../Menu".visible = true
	var saved_game_9:SaveGame = SaveGame.new()
	saved_game_9.scene = $"..".loaded_scene
	saved_game_9.scenes = $"..".scenes
	saved_game_9.bg = $"..".loaded_scene.bg
	saved_game_9.can_advance = $"..".can_advance
	ResourceSaver.save(saved_game_9, "user://save9.tres")

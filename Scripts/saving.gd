extends Node

func _load(path):
	if FileAccess.file_exists(path):
		if Settings.on_main_scene == true:
			finish_loading(path)
		else:
			finish_loading(path)
			get_tree().change_scene_to_file("res://Scenes/canvas_layer.tscn")

func finish_loading(path):
	var save:SaveGame = ResourceLoader.load(path)
	await get_tree().create_timer(0.025).timeout
	$"../..".loaded_scene = save.scene
	$"../..".scenes = save.scenes
	$"../../Bg/Bg".texture = save.bg
	$"../..".can_advance = save.can_advance
	Settings.autoafter = save.settings["autoafter"]
	Settings.auto_speed = save.settings["auto_speed"]
	Settings.tick_mod = save.settings["tick_mod"]
	if $"../../Music".volume_db == 0:
		$"../../Music".stream = $"../..".loaded_scene.song
		$"../../Music".play()
	else:
		$"../../Music2".stream = $"../..".loaded_scene.song
		$"../../Music2".play()
	$"../..".new_scene()
	get_tree().paused = false
	$"..".visible = false

func _save(num):
	$"..".visible = false
	await get_tree().create_timer(0.025).timeout
	get_viewport().get_texture().get_image().save_png('user://save'+str(num)+'.png')
	var save_box:TextureButton = $"../PanelContainer/HBoxContainer/TabContainer/Saves".get_child(num-1).get_child(0)
	var load_box:TextureButton = $"../PanelContainer/HBoxContainer/TabContainer/Loading".get_child(num-1).get_child(0)
	var image:ImageTexture = ImageTexture.create_from_image(Image.load_from_file('user://save'+str(num)+'.png'))
	save_box.texture_normal = image
	load_box.texture_normal = image
	await get_tree().create_timer(0.025).timeout
	$"..".visible = true
	var save:SaveGame = SaveGame.new()
	save.scene = $"../..".loaded_scene
	save.scenes = $"../..".scenes
	save.bg = $"../../Bg/Bg".texture
	save.can_advance = $"../..".can_advance
	save.settings = {
		"autoafter":Settings.autoafter,
		"auto_speed":Settings.auto_speed,
		"tick_mod":Settings.tick_mod
	}
	ResourceSaver.save(save, "user://save"+str(num)+".tres")

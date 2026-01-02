extends Node

func _load(path):
	if FileAccess.file_exists(path):
		var save:SaveGame = ResourceLoader.load(path)
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
		get_tree().paused = false
		$"../Menu".visible = false

func _save(num):
	$"../Menu".visible = false
	await get_tree().create_timer(0.025).timeout
	get_viewport().get_texture().get_image().save_png('user://save'+str(num)+'.png')
	$"../Menu/PanelContainer/HBoxContainer/TabContainer/Saves/".get_child(num-1).get_child(0).texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save'+str(num)+'.png'))
	$"../Menu/PanelContainer/HBoxContainer/TabContainer/Loading/".get_child(num-1).get_child(0).texture_normal = ImageTexture.create_from_image(Image.load_from_file('user://save'+str(num)+'.png'))
	await get_tree().create_timer(0.025).timeout
	$"../Menu".visible = true
	var save:SaveGame = SaveGame.new()
	save.scene = $"..".loaded_scene
	save.scenes = $"..".scenes
	save.bg = $"..".loaded_scene.bg
	save.can_advance = $"..".can_advance
	ResourceSaver.save(save, "user://save"+str(num)+".tres")

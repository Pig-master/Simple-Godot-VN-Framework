extends Node

func _load(path):
	if FileAccess.file_exists(path):
		var save = ResourceLoader.load(path)
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

func _save(num):
	print(num)
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

#region Loads
func _on_l_1_pressed() -> void:
	_load("user://save1.tres")

func _on_l_4_pressed() -> void:
	_load("user://save4.tres")

func _on_l_3_pressed() -> void:
	_load("user://save3.tres")

func _on_l_2_pressed() -> void:
	_load("user://save2.tres")

func _on_l_8_pressed() -> void:
	_load("user://save8.tres")

func _on_l_7_pressed() -> void:
	_load("user://save7.tres")

func _on_l_6_pressed() -> void:
	_load("user://save6.tres")

func _on_l_5_pressed() -> void:
	_load("user://save5.tres")

func _on_l_12_pressed() -> void:
	_load("user://save12.tres")

func _on_l_11_pressed() -> void:
	_load("user://save11.tres")

func _on_l_10_pressed() -> void:
	_load("user://save10.tres")

func _on_l_9_pressed() -> void:
	_load("user://save9.tres")
#endregion

#region Saves
func _on_s_1_pressed() -> void:
	_save(1)

func _on_s_4_pressed() -> void:
	_save(4)

func _on_s_3_pressed() -> void:
	_save(3)

func _on_s_2_pressed() -> void:
	_save(2)

func _on_s_8_pressed() -> void:
	_save(8)

func _on_s_7_pressed() -> void:
	_save(7)

func _on_s_6_pressed() -> void:
	_save(6)

func _on_s_5_pressed() -> void:
	_save(5)

func _on_s_12_pressed() -> void:
	_save(12)

func _on_s_11_pressed() -> void:
	_save(11)

func _on_s_10_pressed() -> void:
	_save(10)

func _on_s_9_pressed() -> void:
	_save(9)
#endregion

extends CanvasLayer
var loaded_scene:Resource
var scenes:Array = []
var tick:float = 0.0
var can_advance:bool = true
var ticks:float = 2.0
var autoafter:bool = false
var ended:bool = false
var tick_mod:float = 0
var auto_on:bool = false

func _ready() -> void:
	loaded_scene = preload("uid://dck40oqlq6s6n")
	new_scene()

func new_scene():
	tick = 0
	ticks = loaded_scene.text_speed + tick_mod
	if loaded_scene.change_song == true:
		music_fade()
	if loaded_scene.end == true:
		ended = true
	$MainBox/VBoxContainer/Text.visible_ratio = 0
	if loaded_scene.change_bg == true:
		if loaded_scene.bg != null:
			$Bg/Bg.texture = loaded_scene.bg
			$AnimationPlayer.play("Fade in")
		else:
			$AnimationPlayer.play("Fade out")
	$MainBox/VBoxContainer/Text.text = loaded_scene.text
	$MainBox/VBoxContainer/Name.text = loaded_scene.character_name
	if loaded_scene.options == 0:
		$MainBox/VBoxContainer/Options/OA.visible = false
		$MainBox/VBoxContainer/Options/OB.visible = false
		$MainBox/VBoxContainer/Options/OC.visible = false
	else:
		if loaded_scene.options >= 1:
			$MainBox/VBoxContainer/Options/OA.visible = true
			$MainBox/VBoxContainer/Options/OA.text = loaded_scene.option_a_text
		if loaded_scene.options >= 2:
			$MainBox/VBoxContainer/Options/OB.visible = true
			$MainBox/VBoxContainer/Options/OB.text = loaded_scene.option_b_text
		if loaded_scene.options == 3:
			$MainBox/VBoxContainer/Options/OC.visible = true
			$MainBox/VBoxContainer/Options/OC.text = loaded_scene.option_c_text
	if loaded_scene.options >= 1:
		$Timer.stop()

func _unhandled_input(_event):
	if Input.is_action_just_pressed("new_scene") and can_advance == true and $MainBox.visible == true and loaded_scene.options <= 0 and ended == false:
		if $MainBox/VBoxContainer/Text.visible_ratio == 1:
			if loaded_scene.save_scene == true:
				scenes.append(loaded_scene)
			loaded_scene.read = true
			loaded_scene = loaded_scene.next
			new_scene()
		else:
			$MainBox/VBoxContainer/Text.visible_ratio = 1

func _process(_delta: float) -> void:
	if $AnimationPlayer.is_playing():
		can_advance = false
	if $MainBox/VBoxContainer/Text.visible_ratio < 1:
		tick += 0.5
		if tick == ticks:
			tick = 0
			$MainBox/VBoxContainer/Text.visible_characters += 1

func _on_oa_pressed() -> void:
	if autoafter == true and auto_on == true:
		$MainBox/VBoxContainer/Menu/Auto.button_pressed = true
		$Timer.start()
	if loaded_scene.save_scene == true:
		scenes.append(loaded_scene)
	loaded_scene = loaded_scene.option_a
	new_scene()

func _on_ob_pressed() -> void:
	if autoafter == true and auto_on == true:
		$MainBox/VBoxContainer/Menu/Auto.button_pressed = true
		$Timer.start()
	if loaded_scene.save_scene == true:
		scenes.append(loaded_scene)
	loaded_scene = loaded_scene.option_b
	new_scene()

func _on_oc_pressed() -> void:
	if autoafter == true and auto_on == true:
		$MainBox/VBoxContainer/Menu/Auto.button_pressed = true
		$Timer.start()
	if loaded_scene.save_scene == true:
		scenes.append(loaded_scene)
	loaded_scene = loaded_scene.option_c
	new_scene()

func _on_timer_timeout() -> void:
	if can_advance == true and $MainBox.visible == true and ended == false:
		if loaded_scene.save_scene == true:
			scenes.append(loaded_scene)
		loaded_scene = loaded_scene.next
		new_scene()

func _on_skip_timeout() -> void:
	if loaded_scene.read == true and ended == false:
		if loaded_scene.save_scene == true:
			scenes.append(loaded_scene)
		loaded_scene = loaded_scene.next
		new_scene()

func _on_animation_player_animation_finished(_anim_name: StringName) -> void:
	can_advance = true

func _on_ticks_drag_ended(_value_changed: bool) -> void:
	tick_mod = $Menu/PanelContainer/HBoxContainer/TabContainer/Settings/VBoxContainer/HBoxContainer/ticks.value
	ticks = tick_mod + loaded_scene.text_speed
	tick = 0

func _on_auto_drag_ended(_value_changed: bool) -> void:
	$Timer.wait_time = $Menu/PanelContainer/HBoxContainer/TabContainer/Settings/VBoxContainer/HBoxContainer2/auto.value

func _on_autooptiond_toggled(toggled_on: bool) -> void:
	if toggled_on:
		autoafter = true
	else:
		autoafter = false

func music_fade():
	var tween = get_tree().create_tween().set_parallel(true)
	if $Music.stream == null:
		$Music.stream = loaded_scene.song
		$Music.play()
		tween.tween_property($Music2, "volume_db", -40.0, 1.0)
		tween.tween_property($Music, "volume_db", 0.0, 1.0)
		await tween.finished
		$Music2.stream = null
		$Music2.stop()
	else:
		$Music2.stream = loaded_scene.song
		$Music2.play()
		tween.tween_property($Music2, "volume_db", 0.0, 1.0)
		tween.tween_property($Music, "volume_db", -40.0, 1.0)
		await tween.finished
		$Music.stream = null
		$Music.stop()

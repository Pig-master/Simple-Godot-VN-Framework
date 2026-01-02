extends Resource
class_name Scene

@export var text:String = ""
@export var next:Scene
@export var bg:CompressedTexture2D
@export var change_bg:bool = false
@export var character_name:String = ""
@export var options:int = 0
@export var option_a_text:String = ""
@export var option_b_text:String = ""
@export var option_c_text:String = ""
@export var option_a:Scene
@export var option_b:Scene
@export var option_c:Scene
@export var read:bool = false
@export var text_speed:float = 2.0
@export var save_scene:bool = true
@export var can_go_back:bool = true
@export var change_song:bool = false
@export var song:AudioStream
@export var SFX:AudioStream
@export var end:bool = false

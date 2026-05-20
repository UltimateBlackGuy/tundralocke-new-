extends Node

@onready var player = $Player
@onready var heat = player.Heat
@onready var progressbar = $CanvasLayer/TextureProgressBar
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	progressbar.value = player.Heat

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	progressbar.value = player.Heat
	
	
	if player.Heat <= 0:
		player.Heat = 100

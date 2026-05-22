extends Area2D


@export var speed: int
@export var damage: int
@export var heatTaken: float
@export var size: int

var dir

func findPlayer():
	var player = get_parent().get_node("Player")
	return player
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	look_at(get_global_mouse_position())
	var plr = findPlayer()
	dir = (get_global_mouse_position() - plr.global_position).normalized()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	global_position += dir * speed * delta
	
	scale.x = size
	scale.y = size

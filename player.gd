extends CharacterBody2D
class_name Player

@export var speed: int
@export var health: int
@export var Heat: int

@onready var Sprite = $AnimatedSprite2D
var lastdir
var WalkAnim = "Walking"
#Fill this up when we actually have some of these guys
var Alurians = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var dir = Input.get_vector("left", "right", "up", "down")
	velocity = dir * speed
	move_and_slide()
	Heat -= 1
	lastdir = dir
	
	if lastdir.x < 0:
		Sprite.flip_h = true
	elif lastdir.x > 0:
		Sprite.flip_h = false
	
	if lastdir.x != 0 or lastdir.y != 0:
		Sprite.play("Walking")
	else:
		Sprite.play("Idle")
	
	

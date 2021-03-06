extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var speed = 100 * delta
	$AnimatedSprite.play("Run")
	if Input.is_action_pressed("ui_left"):
		position.x -= speed
		$AnimatedSprite.play("Run")
		scale.x = -1
	elif Input.is_action_pressed("ui_right"):
		position.x += speed
		$AnimatedSprite.play("Run")
		scale.x = 1
	elif Input.is_action_pressed("ui_up"):
		position.y -= speed
		$AnimatedSprite.play("Idle")
	elif Input.is_action_pressed("ui_down"):
		position.y += speed
	else:
		$AnimatedSprite.play("Idle")

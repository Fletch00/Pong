extends CharacterBody2D

@export var speed = 200
@export var  player := 1
var move

func _physics_process(delta):
	if player == 1:
		move = Input.get_axis("ui_up", "ui_down")
		velocity.y = move * speed
	elif player == 2:
		move = Input.get_axis("Up2", "Down2")
		velocity.y = move * speed
	move_and_slide()

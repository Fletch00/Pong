extends Area2D

@export var flesh: PackedScene
@export var Respawn: Vector2 = Vector2(539, 279)

@export var player = 1

@export var score1 : Label
@export var score2 : Label
var p1s = 0
var p2s = 0


func _on_body_entered(body):
	body.queue_free()
	
	var newFlesh = flesh.instantiate()
	newFlesh.position = Respawn
	get_tree().current_scene.add_child(newFlesh)
	print("Score")
	
	if player == 1:
		p1s += 1
		score1.text = str(p1s)
	elif player == 2:
		p2s += 1
		score2.text = str(p2s)

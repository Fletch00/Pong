class_name ZeBall
extends RigidBody2D

var velX = randf_range(350, 600)
var velY = randf_range(50, 200)

func _ready():
	var boing := PhysicsMaterial.new()
	boing.bounce = 1.0
	physics_material_override = boing
	
	linear_velocity = Vector2(velX, velY)
	
	self.connect("body_entered", Callable(self, "_on_body_entered"))

func _on_body_entered(body: Node):
	# Only randomize bounce if we hit a paddle
	if body.is_in_group("paddle"):  
		linear_velocity.y += randf_range(-300, 300)


func _physics_process(_delta):
	if abs(linear_velocity.x) < 300:
		linear_velocity.x += sign(linear_velocity.x) * 1000
	if abs(linear_velocity.y) < 50:
		linear_velocity.y += sign(linear_velocity.x) * 200

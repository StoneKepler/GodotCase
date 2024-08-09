extends Sprite2D

var speed = 400
var angular_speed = PI

func _process(delta):
	var direation = 0
	if Input.is_action_pressed('ui_left'):
		direation = -1
	if Input.is_action_pressed('ui_right'):
		direation = 1
		
	rotation += angular_speed * direation * delta	
	
	var velocity = Vector2.ZERO
	if Input.is_action_pressed('ui_up'):
		velocity = Vector2.UP.rotated(rotation) * speed
	
	position += velocity * delta

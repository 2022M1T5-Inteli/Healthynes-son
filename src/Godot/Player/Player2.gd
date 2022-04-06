extends KinematicBody2D

var speed = 400
var jump = -100 # Negativo pois o Y é inverso
var gravity = 250
var velocity = Vector2()

# Movimento x sempre será 0, e a cada frame verifica se o pedro esta no chão e qual tecla foi pressionada
func _physics_process(delta):
	velocity.x = 0
	if Input.is_action_pressed("ui_up"):
		if (is_on_floor()):
			velocity.y += jump
	
	# Diminuirá a velocidade vertical a cada frame.
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
	

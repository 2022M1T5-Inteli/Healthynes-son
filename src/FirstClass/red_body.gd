extends KinematicBody2D


# Declare member variables here. Examples:
var a = 2
var b = "text"
var velocidade = 100
var booleano = false
var musica = 1
var entreiAqui1 = false
var entreiAqui2 = false
#
## Called when the node enters the scene tree for the first time.
func _physics_process(_delta):
	var vetor_entrada=Vector2.ZERO
	vetor_entrada.x = Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
	vetor_entrada.y = Input.get_action_strength("ui_down")-Input.get_action_strength("ui_up")

	if((Input.is_action_pressed("tiro_blue")) && (booleano==false)):
		booleano = true
	else:
		booleano = false

	if(booleano):
		move_and_slide(vetor_entrada*(velocidade+50))
	else:
		move_and_slide(vetor_entrada*(velocidade-50))

	

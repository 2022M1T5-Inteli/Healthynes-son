extends Area2D
#mesma coisa que o Carro.gd so que para a esquerda
onready var animationSprite = $AnimatedSprite
onready var animations = []
onready var azul = "DireitaAzul"
onready var ciano = "DireitaCiano"
onready var verde = "DireitaVerde"
onready var laranja = "DireitaLaranja"
onready var vermelho = "DireitaVermelho"
onready var cinza = "DireitaCinza"

var a = ((randi() % 3) + 2 ) * -1
var i = 0
func _ready():
	animations.append(azul)
	animations.append(verde)
	animations.append(ciano)
	animations.append(laranja)
	animations.append(vermelho)
	animations.append(cinza)
	animations.shuffle()
	
func chegouLimite():
		if (position.x < -465):
			position.x = 1295
			a = ((randi() % 3) +2 ) * -1
			randomize()
			animations.shuffle()
			
	
func _process(delta):
	
	animationSprite.play(animations[i])
	move_local_x(a)
	chegouLimite()

func _physics_process(delta):
	
	var bodies = get_overlapping_bodies()
	if bodies:
		for body in bodies:
			if body.name == "Player":
				body.position = Vector2(400, -550)

				

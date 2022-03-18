extends Area2D

onready var animationSprite = $AnimatedSprite
onready var animations = []
onready var azul = "DireitaAzul"
onready var ciano = "DireitaCiano"
onready var verde = "DireitaVerde"
onready var laranja = "DireitaLaranja"
onready var vermelho = "DireitaVermelho"
onready var cinza = "DireitaCinza"

var a = ((randi() % 3) + 2 )
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
		if (position.x > 1295):
			position.x = -465
			a = ((randi() % 3) + 2 )
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
				body.position = Vector2(400, -557)

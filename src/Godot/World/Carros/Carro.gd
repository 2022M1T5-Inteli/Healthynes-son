extends Area2D
#Lista contendo todas as animacoes dos carros
onready var animationSprite = $AnimatedSprite
onready var animations = []
onready var azul = "DireitaAzul"
onready var ciano = "DireitaCiano"
onready var verde = "DireitaVerde"
onready var laranja = "DireitaLaranja"
onready var vermelho = "DireitaVermelho"
onready var cinza = "DireitaCinza"

var a = ((randi() % 3) + 2 ) # variavel para pegar um velocidade aleatoria pro carro
var i = 0

func _ready(): # colocando animacoes dentro da lista 
	animations.append(azul)
	animations.append(verde)
	animations.append(ciano)
	animations.append(laranja)
	animations.append(vermelho)
	animations.append(cinza)
	animations.shuffle()
	
func chegouLimite():
		# Se ele chegar no final da rua ele volta para o comeco com um cor diferente (animacao diferente)
		if (position.x > 1295):
			position.x = -465
			a = ((randi() % 3) + 2 )
			randomize()
			animations.shuffle()
	
func _process(delta):
	 
	animationSprite.play(animations[i])#inicia a animacao
	move_local_x(a) #muda a velocidade para a, que é aleatorio 
	chegouLimite()

func _physics_process(delta):
	#se o carro encostar no player ele muda a localizacao do player para o hospital 
	var bodies = get_overlapping_bodies()
	if bodies:
		for body in bodies:
			if body.name == "Player":
				body.position = Vector2(400, -550)

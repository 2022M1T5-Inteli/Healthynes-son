extends Area2D
#Lista contendo todas as animacoes dos npc
onready var animationSprite = $Npc
onready var animations = []
onready var a = "1"
onready var b = "2"
onready var c = "3"
onready var d = "4"
onready var e = "5"
onready var f = "6"
onready var g = "7"
onready var h = "8"
onready var i = "9"
onready var j = "10"
onready var k = "11"
onready var l = "12"
onready var m = "13"
onready var n = "14"
onready var o = "15"
onready var p = "16"
onready var q = "17"
onready var r = "18"
onready var s = "19"

var ZERO  = 0

func _ready(): # colocando animacoes dentro da lista 
	animations.append(a)
	animations.append(b)
	animations.append(c)
	animations.append(d)
	animations.append(e)
	animations.append(f)
	animations.append(g)
	animations.append(h)
	animations.append(i)
	animations.append(j)
	animations.append(k)
	animations.append(l)
	animations.append(m)
	animations.append(n)
	animations.append(o)
	animations.append(p)
	animations.append(q)
	animations.append(r)
	animations.append(s)
func chegouLimite():
		# Se ele chegar no final da rua ele volta para o comeco com um npc diferente (animacao diferente)
		if (position.x > 1295):
			position.x = -465
			
			randomize()
			animations.shuffle()
	
func _process(delta):
	 
	animationSprite.play(animations[ZERO])#inicia a animacao
	move_local_x(1.5) #muda a velocidade 
	chegouLimite()


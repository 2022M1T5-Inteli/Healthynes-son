extends KinematicBody2D
# melhora na movimentacao do personagem, fluido
const aceleracao = 500
const velocidade_Maxima = 80
const friccao = 500
# organizacao de animacoes (vai ser mais usado mais para frente quando o personagem tiver mais animacoes)
enum {
	ANDAR,
}

var state = ANDAR
var velocity = Vector2.ZERO
# quando iniciado chamar variaveis necessarias para o funcionamento das animacoes
onready var animationPlayer = $AnimationPlayer
onready var animationTree = $AnimationTree
onready var animationState = animationTree.get("parameters/playback")
# ativar a arvore de animacao quando o jogo for iniciado
func _ready():
	animationTree.active = true
	
#Serve para rodar o codigo de andar, parecido com switch statement em Java Script (vai ser mais usado mais para frente quando o personagem tiver mais animacoes) Ate agora so temos ANDAR, mas quando tiver outras vamos poder fazer a mudanca de animacao igualando state com a proxima animacao (state = Ataque) e adicionando Ataque ao nosso match
func _process(delta):
	match state:
		ANDAR:
			andar_state(delta)

# MOVIMENTACAO 
func andar_state(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()
	#ANIMACAO
	if input_vector != Vector2.ZERO:
		animationTree.set("parameters/Idle/blend_position", input_vector)
		animationTree.set("parameters/Run/blend_position", input_vector)
		animationState.travel("Run")
		velocity = velocity.move_toward(input_vector * velocidade_Maxima, aceleracao * delta)
	else:
		animationState.travel("Idle")
		velocity = velocity.move_toward(Vector2.ZERO, friccao * delta)
	
	velocity = move_and_slide(velocity) #COLLISION



extends KinematicBody2D

export(int) var SPEED: int = 60
var velocity: Vector2 = Vector2.ZERO
var path: Array = []    # Posições do caminho traçado em generate_path()
var levelNavigation: Navigation2D = null
var player = null
var player_spotted: bool = false
var caminho = null
var positionPath = []
var a = ((randi() % 4) + 1 )
var arrived_caminho: bool = false
onready var line2d = $Line2D
onready var los = $LineOfSight
var pode = false

# Pega os nodes de outras cenas para serem usados no código e define o array de sorteamento de caminhos
func _ready():
	positionPath.append(0)
	positionPath.append(1)
	positionPath.append(2)
	positionPath.append(3)
	yield(get_tree(), "idle_frame")
	var tree = get_tree()
	
	if tree.has_group("LevelNavigation"):
		levelNavigation = tree.get_nodes_in_group("LevelNavigation")[0]
	if tree.has_group("Player"):
		player = tree.get_nodes_in_group("Player")[0]
	if tree.has_group("Caminhos"):
		caminho = tree.get_nodes_in_group("Caminhos")[positionPath[0]]

# A visão do inimigo sempre rotacionará em direção ao player e se colidirem, irá gerar o path até o player, caso contrario, irá gerar o path até outro lugar
func _physics_process(delta):
	line2d.global_position = Vector2.ZERO
	if velocity == null:
		print("oi")
	
	if player:
		los.look_at(player.global_position)
		check_player_in_detection()
		
		if player_spotted:
			generate_path()
			navigate()
		else:
			common_path()
			navigate()
			if arrived_caminho and pode:
				change_path()
				
			
	move()

# Checar se o player e apenas o player esta na linha de visão, se não estiver, retornar como falso.
func check_player_in_detection() -> bool:
	var collider = los.get_collider()
	
	if collider == null:
		player_spotted = false
	if collider and collider.is_in_group("Player"):
		player_spotted = true
		return true
	return false

# Define a posição e direção para o próximo ponto do path determinado
func navigate():   
	if path.size() > 0:
		velocity = global_position.direction_to(path[1]) * SPEED
		
		# Se chegou no ponto desejado, apaga o ponto
		if global_position == path[0]:
			path.pop_front()

# Se navegação e player forem diferente de null (definidos no _ready) desenhar o path até o player.
func generate_path():
	if levelNavigation != null and player != null:
		path = levelNavigation.get_simple_path(global_position, player.global_position, false)
		line2d.points = path

# Se navegação e caminho forem diferente de null desenhar o path até um caminho randômico.
func common_path():
	var distance_from_caminho = global_position.distance_to(caminho.global_position)
	
	if levelNavigation != null and caminho != null:
		path = levelNavigation.get_simple_path(global_position, caminho.global_position, false)
		line2d.points = path
		if distance_from_caminho < 10:
			arrived_caminho = true
			pode = true
			
# Randomiza o proximo caminho a ser seguido
func change_path():
	var tree = get_tree()
	
	caminho = tree.get_nodes_in_group("Caminhos")[positionPath[randi() % positionPath.size()]]
	pode = false
	
# Mover
func move():
	velocity = move_and_slide(velocity)

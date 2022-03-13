extends KinematicBody2D

export(int) var SPEED: int = 60
var velocity: Vector2 = Vector2.ZERO
var path: Array = []    # Contains destination positions
var levelNavigation: Navigation2D = null
var player = null
var player_spotted: bool = false
var caminho = null
var positionPath = []
var a = ((randi() % 4) + 1 )
var arrived_caminho: bool = false

onready var los = $LineOfSight
var pode = false


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

func _physics_process(delta):
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

func check_player_in_detection() -> bool:
	var collider = los.get_collider()
	if collider == null:
		player_spotted = false
	if collider and collider.is_in_group("Player"):
		player_spotted = true
		   # Debug purposes
		return true
	return false

func navigate():    # Define the next position to go to
	if path.size() > 0:
		velocity = global_position.direction_to(path[1]) * SPEED
		
		# If reached the destination, remove this point from path array
		if global_position == path[0]:
			path.pop_front()

func generate_path():    # It's obvious
	if levelNavigation != null and player != null:
		path = levelNavigation.get_simple_path(global_position, player.global_position, false)
		

func common_path():
	var distance_from_caminho = global_position.distance_to(caminho.global_position)
	 
	if levelNavigation != null and caminho != null:
		path = levelNavigation.get_simple_path(global_position, caminho.global_position, false)
		
		if distance_from_caminho < 10:
			arrived_caminho = true
			pode = true
			

func change_path():
	
	var tree = get_tree()
	caminho = tree.get_nodes_in_group("Caminhos")[positionPath[randi() % positionPath.size()]]
	pode = false
	
func move():
	velocity = move_and_slide(velocity)

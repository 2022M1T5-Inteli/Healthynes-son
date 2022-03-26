extends Node2D

# A cada frame o cenário se move
func _process(delta):
	var a = ((randi() % 3) + 2 ) * -1
	move_local_x(a)

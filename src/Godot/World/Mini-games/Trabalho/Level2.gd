extends Node2D
var speed = -1.5
var maxspeed = -3
# A cada frame o cenário se move
func _process(delta):
	if speed > maxspeed:
		speed -= 0.0010
		move_local_x(speed)
	else:
		speed = maxspeed
		move_local_x(speed)
		print(speed)
	

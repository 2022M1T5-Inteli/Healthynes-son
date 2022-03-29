extends KinematicBody2D

var speed = 100


func _process(delta):
	global_position.y += speed * delta


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	
func _on_VisibilityNotifier1_screen_exited():
	pass # Replace with function body.


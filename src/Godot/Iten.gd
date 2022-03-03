extends Area2D

var pontos = 0
const itenBebida = 100

func _physics_process(delta):
	
	var bodies = get_overlapping_bodies()
	if bodies:
		for body in bodies:
			if body.name == "Player":
				queue_free()
				pontos += itenBebida
				print("Entrando no metodo _physics_process(delta)")
	
				
	

extends RigidBody2D


func _physics_process(delta):
	var bodies = get_colliding_bodies()
	for body in bodies:
		if body.is_in_group("AlimentosSaudaveis"):
			body.queue_free()
			Global.pontos += 100
			
	for body in bodies:
		if body.is_in_group("AlimentosRuins"):
			body.queue_free()
			Global.pontos -= 200

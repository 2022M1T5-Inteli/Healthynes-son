extends RigidBody2D


func _physics_process(delta):
	var bodies = get_colliding_bodies()
	for body in bodies:
		if body.is_in_group("Itens"): # quando ele encostar em um item ele destroi esse item e  adiciona 100 pontos 
			body.queue_free()
			tempo.pontos += 100
	for body in bodies:
		if body.is_in_group("Enemy"): # se ele encostar na mãe (Enemy) ele reconhece que o player perdeu 
			tempo.player_dead = true
	for body in bodies:
		if body.is_in_group("Lixo"): # quando ele encostar no lixo ele   adiciona 100 pontos 
			tempo.pontos += 100
			

extends RigidBody2D

#func _ready():
#	set_physics_process(true)
func _physics_process(delta):
	var bodies = get_colliding_bodies()
	for body in bodies:
		if body.is_in_group("Itens"):
			body.queue_free()
			tempo.pontos += 100
	for body in bodies:
		if body.is_in_group("Enemy"):
			tempo.player_dead = true
	for body in bodies:
		if body.is_in_group("Lixo"):
			tempo.pontos += 100
			

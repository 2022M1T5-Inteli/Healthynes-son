extends Area2D
#se o player encostar na bebida em cima da mesa na casa, abre o menu para ir para o jogo
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	var overlapping = false
	if bodies:
		for body in bodies:
			if body.name == "Player": # verifica se o corpo que esta colidindo com a bebida eh o player, se for ele muda para a cena do menu
				print("corpo sobre o copo")
				get_tree().change_scene("res://World/Espacos/Casa/Scenes/MenuTask1.tscn")
				
				if body.name != "Player":
					print("corpo não esta sobre o copo")
				

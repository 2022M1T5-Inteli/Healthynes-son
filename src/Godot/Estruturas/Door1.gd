extends Area2D
# verifica  se o player esta na encostando na porta, se sim ele inicia a animacao, espera um segundo e entra na cena da casa. Se ele nao estiver encostando na porta a porta fica fechada 
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	var overlapping = false
	if bodies:
		$AnimationPlayer.play("closed_door")
		for body in bodies:
			if body.name == "Player":
				$AnimationPlayer.play("idle")
				get_tree().change_scene("res://World/House.tscn")
				print("colisão aconteceu")
				
				if body.name != "Player":
					 $AnimationPlayer.play("closed_door")

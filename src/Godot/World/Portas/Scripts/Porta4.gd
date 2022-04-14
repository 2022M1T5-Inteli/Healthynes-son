extends Area2D

# verifica  se o player esta na encostando na porta, se sim ele inicia a animacao, espera um segundo e entra na cena da casa. Se ele nao estiver encostando na porta a porta fica fechada 
func _physics_process(delta):
	
	var bodies = get_overlapping_bodies()
	var overlapping = false
	var timing = true
	
	Global.interacao()
	if bodies and Global.interacao:
		for body in bodies:
			if body.name == "Player":
				$AnimationPlayer.play("idle")
				yield(get_tree().create_timer(1.0), "timeout")
				timing = false
				get_tree().change_scene("res://World/Espacos/Hospital/Scenes/HospitalAndar1.tscn")
				if body.name != "Player":
					 $AnimationPlayer.play("closed_door")

extends Area2D

func _physics_process(delta):
	var bodies = get_overlapping_bodies() 
	var overlapping = false
	if bodies: # Verifica se há corpos colidindo
		for body in bodies: 
			if body.name == "Player": # Verifica se o corpo colidindo é do Player
				print("corpo sobre o copo")
				get_tree().change_scene("res://World/Espacos/Hospital/Scenes/HospitalAndar2.tscn") # Trocar de cena
				
				if body.name != "Player":
					print("corpo não esta sobre o copo")

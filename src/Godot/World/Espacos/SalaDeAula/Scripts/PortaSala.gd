extends Area2D

func _physics_process(delta):
	if tempo.terminouCards:
		var bodies = get_overlapping_bodies()
		var overlapping = false
		if bodies:
			for body in bodies:
				if body.name == "Player":
					get_tree().change_scene("res://World.tscn")
					print("colisão aconteceu")
				
				

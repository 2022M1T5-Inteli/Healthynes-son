extends Area2D

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	var overlapping = false
	if bodies:
		for body in bodies:
			if body.name == "Player":
				print("corpo sobre o copo")
				get_tree().change_scene("res://World/MenuTask1.tscn")
				
				if body.name != "Player":
					print("corpo não esta sobre o copo")
				

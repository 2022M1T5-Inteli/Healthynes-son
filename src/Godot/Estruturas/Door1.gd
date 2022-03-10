extends Area2D

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	var overlapping = false
	if bodies:
		$AnimationPlayer.play("closed_door")
		for body in bodies:
			if body.name == "Player":
				$AnimationPlayer.play("idle")
				get_tree().change_scene("Pacman.tscn")
				
				if body.name != "Player":
					 $AnimationPlayer.play("closed_door")

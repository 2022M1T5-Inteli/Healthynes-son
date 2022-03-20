extends Area2D

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	var overlapping = false
	var timing = true
	if bodies:
		
		for body in bodies:
			if body.name == "Player":
				$AnimationPlayer.play("idle")
				yield(get_tree().create_timer(1.0), "timeout")
				timing = false
				get_tree().change_scene("res://World/House.tscn")
							
				if body.name != "Player":
					 $AnimationPlayer.play("closed_door")

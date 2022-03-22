extends RigidBody2D

func _physics_process(delta):
	
	var bodies = get_colliding_bodies()
	for body in bodies:
		$AnimationPlayer.play("idle")
		
		if body.name == "Player":
			$AnimationPlayer.play("idle")
			print("porra")
			get_tree().change_scene("House.tscn")
		if body.name != "Player":
			$AnimationPlayer.play("closed_door")

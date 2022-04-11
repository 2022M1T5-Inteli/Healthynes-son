extends Area2D

func _physics_process(_delta):
	var bodies = get_overlapping_bodies()
	var overlapping = false
	$Interrogacao.visible = true
	
	if bodies:
		for body in bodies:
			if body.name == "Player":
				$Interrogacao.visible = false

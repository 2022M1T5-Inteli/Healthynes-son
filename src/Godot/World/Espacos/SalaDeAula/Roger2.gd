extends Area2D
	
func _physics_process(_delta):
	var bodies = get_overlapping_bodies()
	var overlapping = false
	
	if bodies:
		$Interrogacao.visible = true
		for body in bodies:
			if body.name == "Player":
				print("player com Roger")
				$Interrogacao.visible = false
				
			elif body.name != "Player": 
				$Interrogacao.visible = true


extends Area2D
onready var pont = get_node("../../Pontuacao")
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	var overlapping = false
	if bodies:
		for body in bodies:
			if body.name == "Pedro":
				pont.visible = true
				get_tree().paused = true


extends Area2D

func _ready():
	visible = false
	$CollisionPolygon2D.disabled = true


func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	var overlapping = false
	if Invent.pointsInv == 1: 
		visible = true
		$CollisionPolygon2D.disabled = false
	if bodies:
		for body in bodies:
			if body.name == "Player":
				print("corpo sobre o copo")
				get_tree().change_scene("res://World/Mini-games/Trabalho/Scenes/MenuTask2.tscn")
				
				if body.name != "Player":
					print("corpo não esta sobre o copo")
				

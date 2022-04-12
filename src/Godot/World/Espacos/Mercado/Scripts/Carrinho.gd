extends Area2D

func _ready():
	visible = false
	$CollisionPolygon2D.disabled = true

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	var overlapping = false
	
	if Invent.pointsInv2 == 1:
		visible = true
		$CollisionPolygon2D.disabled = false
	
	if bodies:
		for body in bodies:
			if body.name == "Player":
				get_tree().change_scene("res://World/Espacos/Mercado/Scenes/MenuTask3.tscn")

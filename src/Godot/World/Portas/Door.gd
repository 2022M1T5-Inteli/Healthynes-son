extends KinematicBody2D

var colliding = false

func _on_Area2D_body_entered(body):
	
	colliding = true
	print("entered")

#	func _physics_process(delta):
#	var bodies = get_overlapping_bodies()
#	var overlapping = false
#	$AnimationPlayer.play("closed_door")
#	for body in bodies:
#		if body.name == "Player":
#			print("porta")
#			$AnimationPlayer.play("idle")
#			get_tree().change_scene("House.tscn")
#
#			if body.name != "Player":
#				$AnimationPlayer.play("closed_door")

extends Area2D

func _ready():
	$Card1.visible = false
	$Card2.visible = false 
	$Card3.visible = false
	
func _physics_process(_delta):
	var bodies = get_overlapping_bodies()
	var overlapping = false
	var timing = true 
	
	if bodies:
		for body in bodies:
			if body.name == "Player":
				$Card1.visible = true
				yield(get_tree().create_timer(7.0), "timeout")
				$Card1.visible = true
				
				
				
				


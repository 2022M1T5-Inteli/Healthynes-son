extends AnimatedSprite

func _ready():
	visible = false
	
func _physics_process(delta):
	if Invent.pointsInv == 1:
		visible = true

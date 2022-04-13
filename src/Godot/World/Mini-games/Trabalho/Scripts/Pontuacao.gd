extends Node2D

func _process(delta):
	if Global.estrela == 1:
		$Sprite1.visible = true
		$Sprite2.visible = false
		$Sprite3.visible = false
		
	if Global.estrela == 2:
		$Sprite1.visible = true
		$Sprite2.visible = true
		$Sprite3.visible = false

	if Global.estrela == 3:
		$Sprite1.visible = true
		$Sprite2.visible = true
		$Sprite3.visible = true

	if Global.estrela == 0:
		$Sprite1.visible = false
		$Sprite2.visible = false
		$Sprite3.visible = false

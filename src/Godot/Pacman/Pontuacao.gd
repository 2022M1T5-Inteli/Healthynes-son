extends Node2D

func _input(event):
	print(tempo.pontos)
	if tempo.pontos == 2000:
		get_tree().paused = true
		visible = true
		
		
func _process(delta):
	
	
	if tempo.time <= 10:
		$Sprite2.visible =true
		$Sprite3.visible =true
		$Sprite4.visible =true
		
	elif tempo.time <= 20:
		$Sprite2.visible =true
		$Sprite3.visible =true
		$Sprite4.visible = false
		
	elif tempo.time > 20:
		$Sprite2.visible =true
		$Sprite3.visible = false
		$Sprite4.visible = false
		
	if tempo.time > 30:
		$Sprite2.visible = false
		$Sprite3.visible = false
		$Sprite4.visible = false	
		$Button2.visible = false
		$ColorRect.visible = false
		
		

		


func _on_Button_pressed():
	tempo.time = 0
	tempo.timer_on = true
	tempo.pontos = 0
	get_tree().paused = false
	get_tree().reload_current_scene()




extends Node2D

func _input(event):
	print(tempo.pontos)
	
func _ready():
	$MrSandman.play()
		
func _process(delta):
	if tempo.pontos < 2000:
		$September.stop()
	if tempo.pontos == 2000:
		$September.play()
		$MrSandman.stop()
		get_tree().paused = true
		visible = true
	if tempo.player_dead:
		tempo.pontos = 2000
		tempo.time = 99999
		tempo.player_dead = false
	
	if tempo.time <= 40:
		$September.play()
		$Sprite2.visible =true
		$Sprite3.visible =true
		$Sprite4.visible =true
	
	
	elif tempo.time <= 50:
		$Sprite2.visible =true
		$Sprite3.visible =true
		$Sprite4.visible = false
		
	elif tempo.time > 60:
		$Sprite2.visible =true
		$Sprite3.visible = false
		$Sprite4.visible = false
		
	if tempo.time > 60:
		$Sprite2.visible = false
		$Sprite3.visible = false
		$Sprite4.visible = false	
		$Button2.visible = false
		$ColorRect.visible = false
		$ColorRect3.visible = true
		

		


func _on_Button_pressed():
	tempo.time = 0
	tempo.timer_on = true
	tempo.pontos = 0
	get_tree().paused = false
	get_tree().reload_current_scene()
	yield(get_tree().create_timer(3.0), "timeout")

	
	




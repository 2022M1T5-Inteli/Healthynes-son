extends Node2D

func _input(event):
	print(tempo.pontos) #debug
	
func _ready():
	$MrSandman.play() #musica
		
func _process(delta):# sistema de estrelas e musicas
	if tempo.pontos < 2100:
		$September.stop()
	if tempo.pontos == 2100: # musicas 
		$September.play()
		$MrSandman.stop()
		get_tree().paused = true
		visible = true
	if tempo.player_dead:
		tempo.pontos = 2100
		tempo.time = 999999
		$tempo.visible = false
		tempo.player_dead = false
	
	if tempo.time <= 50: # sistema de estrelas, menor que 50 segundos 3 estrelas		
		$September.play()
		$Sprite2.visible =true
		$Sprite3.visible =true
		$Sprite4.visible =true
	
	
	elif tempo.time <= 60: # sistema de estrelas, menos que 60 segundos 2 estrelas
		$Sprite2.visible =true
		$Sprite3.visible =true
		$Sprite4.visible = false
		
	
		
	if tempo.time > 60:# sistema de estrelas, maior que 60, 0 estrelas 
		$Sprite2.visible = false
		$Sprite3.visible = false
		$Sprite4.visible = false	
		$Button2.visible = false
		$ColorRect.visible = false
		$ColorRect3.visible = true
		

		


func _on_Button_pressed(): # sistema de reiniciar mini game
	tempo.time = 0
	tempo.timer_on = true
	tempo.pontos = 0
	get_tree().paused = false
	get_tree().reload_current_scene()
	yield(get_tree().create_timer(3.0), "timeout")

	
	




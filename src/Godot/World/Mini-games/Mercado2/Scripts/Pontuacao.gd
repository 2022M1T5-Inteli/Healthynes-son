extends Node2D


	
func _ready():
	Global.pontos = 0

	$MrSandman.play() #musica
	yield(get_tree().create_timer(60.0), "timeout") 
	$September.play()
	$MrSandman.stop()
	get_tree().paused = true
	visible = true
func _process(delta):
	if Global.pontos >= 3000: # sistema de estrelas, menor que 50 segundos 3 estrelas		
		$Sprite2.visible =true
		$Sprite3.visible =true
		$Sprite4.visible =true

	elif Global.pontos >= 2000: # sistema de estrelas, menos que 60 segundos 2 estrelas
		$Sprite2.visible =true
		$Sprite3.visible =true
		$Sprite4.visible = false
		
	elif Global.pontos >= 1000: # sistema de estrelas, menos que 60 segundos 2 estrelas
		$Sprite2.visible =true
		$Sprite3.visible = false
		$Sprite4.visible = false
		
	if Global.pontos < 100:# sistema de estrelas, maior que 60, 0 estrelas 
		$Sprite2.visible = false
		$Sprite3.visible = false
		$Sprite4.visible = false
		$Button2.visible = true
		$Button.visible = true
		$ColorRect.visible = false
		$ColorRect3.visible = true


func _on_Button_pressed(): # sistema de reiniciar mini game
	
	
	Global.pontos = 0
	get_tree().paused = false
	get_tree().reload_current_scene()
	
	
	

func _on_Button2_pressed():
	get_tree().change_scene("res://World/Espacos/Mercado/Scenes/Mercado.tscn")
	get_tree().paused = false
	Invent.pointsInv =+ 1

extends Node2D

func _ready():
	$Sprite.visible = false
	Global.pontos = 0

func _physics_process(delta):
	var timing = true 
	yield(get_tree().create_timer(20.0), "timeout")
	timing = false
	$Sprite.visible = true 
	get_tree().paused = true
	 

func _on_Button2_pressed():
	get_tree().change_scene("res://World/Espacos/Mercado/Scenes/Mercado.tscn")
	get_tree().paused = false
	

func _on_Button_pressed():
	get_tree().change_scene("res://World/Mini-games/Mercado2/Scenes/Level3.tscn")
	get_tree().paused = false
	Global.pontos = 0
	Invent.pointsInv3 += 1

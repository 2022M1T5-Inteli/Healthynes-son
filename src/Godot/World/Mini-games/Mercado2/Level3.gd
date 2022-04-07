extends Node2D

func _ready():
	$Sprite.visible = false

func _physics_process(delta):
	var timing = true 
	yield(get_tree().create_timer(20.0), "timeout")
	timing = false
	$Sprite.visible = true 
	get_tree().paused = true
	 

func _on_Button2_pressed():
	get_tree().change_scene("res://World/Market.tscn")
	get_tree().paused = false
	

func _on_Button_pressed():
	get_tree().change_scene("res://World/Mini-games/Mercado2/Level3.tscn")
	get_tree().paused = false
	Global.pontos = 0

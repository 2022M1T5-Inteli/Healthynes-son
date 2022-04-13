extends Node2D

func _ready():
	Global.pontos = 0	 

func _on_Button2_pressed():
	get_tree().change_scene("res://World/Espacos/Mercado/Scenes/Mercado.tscn")
	get_tree().paused = false
	

func _on_Button_pressed():
	get_tree().change_scene("res://World/Mini-games/Mercado2/Scenes/Level3.tscn")
	get_tree().paused = false
	Global.pontos = 0
	Invent.pointsInv3 =+ 1

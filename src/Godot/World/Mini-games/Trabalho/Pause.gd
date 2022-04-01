extends Node2D

func _ready():
	$Reiniciar.visible = false
	$Voltar.visible = false


func _on_Voltar_pressed():
	print("po")
	get_tree().change_scene("res://World/Work.tscn")

extends Area2D

func _on_Button_pressed():
	$Sprite1.visible = false
	get_tree().change_scene("res://World/Mini-games/Mercado/Cards/Card2.tscn")

extends CanvasLayer


func _on_Button2_pressed():
	get_tree().change_scene("res://World/Tutorial/Intro.tscn")

func _on_Button3_pressed():
	get_tree().change_scene("res://World/Tutorial/Fase3.tscn")

func _on_Button4_pressed():
	get_tree().change_scene("res://World/Tutorial/Fase2.tscn")

func _on_Button5_pressed():
	get_tree().change_scene("res://World/MenuPrincipal.tscn")

func _on_Button_pressed():
	get_tree().change_scene("res://World/Tutorial/Fase1.tscn")

extends Area2D


func _on_Button_pressed():
	get_tree().change_scene("res://World/SalaDeAula.tscn")

func _on_Button4_pressed():
	get_tree().change_scene("res://World/Tutorial/Abertura.tscn")

func _on_Button3_pressed():
	get_tree().quit()

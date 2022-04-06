extends Area2D

func _on_LinkButton_pressed():
	OS.shell_open("https://www.inca.gov.br/alimentacao#:~:text=Ter%20uma%20alimenta%C3%A7%C3%A3o%20rica%20em,outros%2C%20pode%20prevenir%20o%20c%C3%A2ncer.")

func _on_Button2_pressed():
	$Sprite2.visible = false

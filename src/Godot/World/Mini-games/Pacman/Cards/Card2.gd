extends Area2D

func _on_LinkButton_pressed():
	OS.shell_open("https://www.inca.gov.br/causas-e-prevencao/prevencao-e-fatores-de-risco/bebidas-alcoolicas")

func _on_LinkButton2_pressed():
	OS.shell_open("https://www.cnnbrasil.com.br/saude/consumo-de-bebidas-acucaradas-aumenta-em-ate-40-o-risco-de-cancer-diz-medico/#:~:text=R%C3%BAssia-,Consumo%20de%20bebidas%20a%C3%A7ucaradas%20aumenta%20em%20at%C3%A9%2040,risco%20de%20c%C3%A2ncer%2C%20diz%20m%C3%A9dico&text=Um%20estudo%20publicado%20pela%20revista,de%20bebidas%20a%C3%A7ucaradas%2C%20como%20refrigerantes")

func _on_Button2_pressed():
	get_tree().change_scene("res://World/Mini-games/Pacman/Cards/Card3.tscn")

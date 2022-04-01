extends CanvasLayer

func _ready():
	$Cards.visible = false

func _on_Jogar_pressed():
	$Cards.visible = true
	
func _on_Voltar_pressed():
	get_tree().change_scene("res://World/Espacos/Casa/House2.tscn")

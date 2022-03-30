extends CanvasLayer

func _ready():
	$Cards.visible = false

func _on_Jogar_pressed():
	get_tree().change_scene("res://World/Mini-games/Mercado/mercadoTäsk.tscn")

func _on_Voltar_pressed():
	get_tree().change_scene("res://World/Market.tscn")

extends Node2D

var ganhou = false

func _ready():
	$Pontuacao.visible = false
	get_tree().paused = false
	
func _process(delta):
	if $Pedro.position.x >= $Mae.position.x - 15 and $Pedro.position.x <= $Mae.position.x + 15:
		get_tree().paused = true
		$Pontuacao.visible = true
	pontuacao()
	
func _on_Voltar_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://World/Espacos/Trabalho/Scenes/Trabalho.tscn")
	Invent.pointsInv2 =+ 1

func _on_Reiniciar_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()
	
func pontuacao():
	if $Pedro.position.x < 300 and $Pedro.position.x >= 150:
		print("3 estrelas")
		Global.estrela = 3
		ganhou = true
		
	if $Pedro.position.x < 150 and $Pedro.position.x >= 100:
		print("2 estrelas")
		Global.estrela = 2
		ganhou = true
		
	if $Pedro.position.x < 100 and $Pedro.position.x > 60:
		print("1 estrela")
		Global.estrela = 1
		ganhou = true
		
	if $Pedro.position.x <= 60:
		print("perdeuplayboy")
		Global.estrela = 0
		ganhou = false

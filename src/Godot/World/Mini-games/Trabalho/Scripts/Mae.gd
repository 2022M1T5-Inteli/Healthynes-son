extends Node2D

var ganhou = false

func _ready():
	$FiltroTV/Pontuacao.visible = false
	get_tree().paused = false
	$Music.play()
	
func _process(delta):
	if $FiltroTV/Pedro.position.x >= $FiltroTV/Mae.position.x - 15 and $FiltroTV/Pedro.position.x <= $FiltroTV/Mae.position.x + 15:
		get_tree().paused = true
		$FiltroTV/Pontuacao.visible = true
	pontuacao()
	
func _on_Voltar_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://World/Espacos/Trabalho/Scenes/Trabalho.tscn")
	Invent.pointsInv2 =+ 1

func _on_Reiniciar_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()
	
func pontuacao():
	if $FiltroTV/Pedro.position.x < 300 and $FiltroTV/Pedro.position.x >= 150:
		print("3 estrelas")
		Global.estrela = 3
		ganhou = true
		
	if $FiltroTV/Pedro.position.x < 150 and $FiltroTV/Pedro.position.x >= 100:
		print("2 estrelas")
		Global.estrela = 2
		ganhou = true
		
	if $FiltroTV/Pedro.position.x < 100 and $FiltroTV/Pedro.position.x > 60:
		print("1 estrela")
		Global.estrela = 1
		ganhou = true
		
	if $FiltroTV/Pedro.position.x <= 60:
		print("perdeuplayboy")
		Global.estrela = 0
		ganhou = false

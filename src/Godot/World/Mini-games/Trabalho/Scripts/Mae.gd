extends Node2D

func _ready():
	$Node2D2/Reiniciar.visible = false
	$Node2D2/Voltar.visible = false
	$Node2D2/Continuar.visible = false

func _process(delta):
	
	if $Pedro.position.x >= $Mae.position.x - 15 and $Pedro.position.x <= $Mae.position.x + 15:
		get_tree().paused = true
		$Node2D2/Reiniciar.visible = true
		$Node2D2/Voltar.visible = true

func _on_Voltar_pressed():
	get_tree().change_scene("res://World/Work.tscn")
	get_tree().paused = false
	
func _on_Reiniciar_pressed():
	get_tree().reload_current_scene()
	get_tree().paused = false

func _on_Continuar_pressed():
	get_tree().change_scene("res://World/Work.tscn")
	get_tree().paused = false




extends TextureProgress


onready var _healthbar = $TextureHealthbar
onready var _scoreLabel = $Label
#func _process(delta):
	#var convertedValue = ((53 * Global.pontos) / 1000) + 24 #logica interna
	#_healthbar.value = convertedValue
	#_scoreLabel.text = str(Global.pontos)

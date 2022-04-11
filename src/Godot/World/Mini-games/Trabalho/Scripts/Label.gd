extends Label

func _ready():
	tempo.timer_on = true #inicia o timer
	
func _process(delta):
	
	stopTimer()	 # quando ele terminar o mini game o tempo para
	if(tempo.timer_on):
		tempo.time += delta/2 # ajusta o tempo para o segundos 
		
	var mils = fmod(tempo.time,1)*1000
	var secs = fmod(tempo.time,60)
	var mins = fmod(tempo.time, 60*60) / 60# ajusta mili segundos, segundos, minutos
	
	var time_passed = " %02d : %02d : %03d" % [mins,secs,mils]
	text = time_passed # colocando o tempo na label
	
func stopTimer():
	if tempo.pontos == 2100:
		tempo.timer_on = false

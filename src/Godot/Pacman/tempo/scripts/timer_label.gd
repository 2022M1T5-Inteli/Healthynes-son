extends Label


func _ready():
	tempo.timer_on = true
	
func _process(delta):
	
	stopTimer()	
	if(tempo.timer_on):
		tempo.time += delta/2
		
	var mils = fmod(tempo.time,1)*1000
	var secs = fmod(tempo.time,60)
	var mins = fmod(tempo.time, 60*60) / 60
	
	var time_passed = " %02d : %02d : %03d" % [mins,secs,mils]
	text = time_passed
	
func stopTimer():
	if tempo.pontos == 2000:
		tempo.timer_on = false
		





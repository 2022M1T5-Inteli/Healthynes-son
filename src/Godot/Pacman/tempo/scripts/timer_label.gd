extends Label
var pontos = 0
var time = 0
var timer_on = false
var player_dead = false

func _ready():
	timer_on = true
	
func _process(delta):
	
	stopTimer()	
	if(timer_on):
		time += delta
		
	var mils = fmod(time,1)*1000
	var secs = fmod(time,60)
	var mins = fmod(time, 60*60) / 60
	
	var time_passed = " %02d : %02d : %03d" % [mins,secs,mils]
	text = time_passed
	
func stopTimer():
	if tempo.pontos == 2000:
		timer_on = false
		





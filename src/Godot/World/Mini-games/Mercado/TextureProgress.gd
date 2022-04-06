extends TextureProgress
var timer = 0.0
var value

func _ready():
	set_process(true)

func _process(delta):
	timer += delta
 if timer >= 1.0:
		 timer = 0.0
			  value = self.get_value()
  			  self.set_value(value - 1)
	  		  if (value - 1) == 0:

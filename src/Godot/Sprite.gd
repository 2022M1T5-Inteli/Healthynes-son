extends Node2D

var pointsInv = 0
var pointsInv2 = 0
var pointsInv3 = 0


func _ready():
	visible = false

func _process(delta):
	if Input.is_action_pressed("show"):
		visible = true
	if Input.is_action_just_released("show"):
		visible = false

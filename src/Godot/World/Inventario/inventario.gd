extends Node2D

onready var invAtual = get_node("Invent")

var i2 = preload("res://Tiles/Invs/Inv2.png")
var i3 = preload("res://Tiles/Invs/Inv3.png") 
var i4 = preload("res://Tiles/Invs/InvF.png")

	
func _process(delta):	
	if Invent.pointsInv == 1:
		invAtual.set_texture(i2)
	if Invent.pointsInv2 == 1:
		invAtual.set_texture(i3)
	if Invent.pointsInv3 == 1:
		invAtual.set_texture(i4)

extends "res://Enemy.gd"

func _process(delta):
	rotate(delta*TAU/3)

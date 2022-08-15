extends KinematicBody2D

onready var explo_scn=preload("res://Explosion.tscn")

func hit(_strength):
	var explo=explo_scn.instance()
	get_tree().root.add_child(explo)
	explo.global_position=global_position
	Globals.add_points(150)
	queue_free()

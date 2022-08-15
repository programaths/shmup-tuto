extends Node2D

var laser_scn=preload("res://LaserBlue.tscn")
onready var laser_sound=$AudioStreamPlayer2D

func shoot():
	laser_sound.pitch_scale=1+randf()*0.5
	laser_sound.play()
	var laser=laser_scn.instance()
	get_tree().root.add_child(laser)
	laser.global_position=global_position
	
	laser=laser_scn.instance()
	get_tree().root.add_child(laser)
	laser.global_position=global_position
	laser.rotation=TAU/10
	
	laser=laser_scn.instance()
	get_tree().root.add_child(laser)
	laser.global_position=global_position
	laser.rotation=-TAU/10

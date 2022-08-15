extends Area2D

onready var weapon_scn=preload("res://WeaponTripleBlue.tscn")

func _ready():
	connect("body_entered",self,"body_entered")

func body_entered(body):
	if body.has_method("swap_weapon"):
		disconnect("body_entered",self,"body_entered")
		body.swap_weapon(weapon_scn.instance())
		$AudioStreamPlayer2D.play()
		visible=false
		yield($AudioStreamPlayer2D,"finished")
		queue_free()

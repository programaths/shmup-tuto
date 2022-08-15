extends "res://Enemy.gd"

var start_position

export(int) var swing_radius=128
export(float) var swing_time=4.0

func _ready():
	start_position=position
	

func _process(delta):
	position.x=start_position.x+cos(fmod(Time.get_ticks_msec()/swing_time,1000)/1000.0*TAU)*swing_radius

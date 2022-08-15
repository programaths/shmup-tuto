extends Position2D

onready var laser_red_scn=preload("res://LaserRed.tscn")

func _ready():
	$VisibilityNotifier2D.connect("screen_entered",self,"connect_timer",[],CONNECT_ONESHOT)

func connect_timer():
	$Timer.connect("timeout",self,"_on_Timer_timeout")

func _on_Timer_timeout():
	if $VisibilityNotifier2D.is_on_screen():
		var laser=laser_red_scn.instance()
		get_tree().root.add_child(laser)
		laser.global_position=global_position
		laser.rotation=global_rotation

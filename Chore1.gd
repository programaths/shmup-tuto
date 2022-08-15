extends Path2D

func _ready():
	$VisibilityNotifier2D.connect("screen_entered",self,"start_play",[],CONNECT_ONESHOT)

func start_play():
	get_parent().remove_child(self)
	Globals.camera.add_child(self)
	self.position=Vector2()
	$AnimationPlayer.play("follow")
	yield($AnimationPlayer,"animation_finished")
	queue_free()

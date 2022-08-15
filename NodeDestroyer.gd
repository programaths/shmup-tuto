extends VisibilityNotifier2D

func _ready():
	connect("screen_entered",self,"connect_to_destroy",[],CONNECT_ONESHOT)

func connect_to_destroy():
	connect("screen_exited",self,"destroy",[],CONNECT_ONESHOT)

func destroy():
	get_parent().queue_free()

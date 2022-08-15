extends Area2D

func _ready():
	connect("body_entered",self,"body_entered")

func _process(delta):
	position=position+Vector2.UP.rotated(rotation)*512*delta

func body_entered(tutu):
	if tutu.has_method("hit"):
		tutu.hit(1)
	queue_free()

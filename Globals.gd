extends Node

signal score_changed(old_score,new_score)

var camera:Camera2D=null
var score=0

func add_points(points):
	var old_score=score
	score=score+points
	emit_signal("score_changed",old_score,score)

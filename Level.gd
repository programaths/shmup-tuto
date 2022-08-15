extends Node

onready var rtf_score=$"%RtScore"

func _ready():
	Globals.camera=$ForwardCamera
	Globals.connect("score_changed",self,"score_changed")

func score_changed(old_score,new_score):
	create_tween().tween_method(self,"update_score",old_score,new_score,1)

func update_score(value):
	rtf_score.bbcode_text="[right][rainbow][wave]SCORE: %d[/wave][/rainbow][/right]" % [value]	

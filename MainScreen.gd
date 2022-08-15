extends CenterContainer

onready var start_btn=$"%ButtonStart"

func _ready():
	start_btn.grab_focus()
	start_btn.connect("pressed",self,"start_game")

func start_game():
	get_tree().change_scene("res://Level1.tscn")

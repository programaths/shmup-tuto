extends KinematicBody2D


var laser_spawn_point

onready var timer=$Timer

var can_shoot=true

onready var weapon=$Weapon
onready var weapon_position=$WeaponPosition

	

func _ready():
	weapon.global_position=weapon_position.global_position
	timer.connect("timeout",self,"enable_shoot")

func _process(delta):
	position=position+Input.get_vector("move_left","move_right","move_up","move_down")*256*delta
	position.x=clamp(position.x,32,1024-32)
	position.y=clamp(position.y,32,600-32)
	if can_shoot and Input.is_action_pressed("shoot"):
		can_shoot=false
		timer.start(0.5)
		weapon.shoot()
		

func enable_shoot():
	can_shoot=true

func swap_weapon(new_weapon):
	remove_child(weapon)
	weapon=new_weapon
	add_child(weapon)
	weapon.global_position=weapon_position.global_position

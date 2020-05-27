extends Node2D


var walk_spd = 3
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	handle_movement()
	pass
	
func handle_movement():
	if Input.is_action_pressed("a"):
		global_position.x -= walk_spd
	if Input.is_action_pressed("d"):
		global_position.x += walk_spd
	if Input.is_action_pressed("w"):
		global_position.y -= walk_spd
	if Input.is_action_pressed("s"):
		global_position.y += walk_spd;
		
	look_at(get_global_mouse_position())
	

extends RayCast3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print(is_colliding())
	if is_colliding():
		var collider = get_collider()
		if collider != $/root/Node3D/CharacterBody3D:
			print(collider.global_position)

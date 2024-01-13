extends Node3D

@export var x_width:int
@export var y_width:int
@export var z_width:int
var grid = []

# Called when the node enters the scene tree for the first time.
func _ready():
	var collider = preload("res://Collider.tscn")
	
	for i in range(x_width):
		var two_d_array_y = []
		for j in range(y_width):
			var one_d_array_z = []
			for k in range(z_width):
				# Initialize each element in the 3D array
				one_d_array_z.append(0)
			two_d_array_y.append(one_d_array_z)
		grid.append(two_d_array_y)
		
	for child in $Assets.get_children():
		var pos_x = floor(abs(child.position.x))
		var pos_y = floor(abs(child.position.y))
		var pos_z = floor(abs(child.position.z))
		print(child, ": ", pos_x, ", ", pos_y, ", ", pos_z)
		grid[pos_x][pos_y][pos_z] = child
		child.add_child(collider.instantiate())
		
	print(grid)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

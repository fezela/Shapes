extends Node2D

var np
var front_length: float
var back_length: float
var orbit_depth: float
var front_width: float 
var back_width: float
var satellite_radius: float
var satellite_start_pos: Vector2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	np = get_parent()
	print(np.orbital_body_radius)
	var np_radius = np.orbital_body_radius
	satellite_radius = np_radius * .35
	front_length = np_radius * 2.0
	back_length = np_radius * 2.0
	orbit_depth = np_radius * .5
	front_width = np_radius / 5
	back_width = front_width / 2
	$Front.rebuild()
	$Back.rebuild()
	var front_points = $Front.points
	var back_points = $Back.points
	front_points.reverse()
	back_points.reverse()
	var orbit_path_array = []
	for i in front_points:
		orbit_path_array.append(i)
	for i in back_points:
		orbit_path_array.append(i)
	#print("front_points = ", front_points)
	#print("back_points = ", back_points)
	print("orbit_path_array = ", orbit_path_array)
	satellite_start_pos = orbit_path_array[0]
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

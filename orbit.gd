extends Node2D

var np
var front_length: float
var back_length: float
var orbit_depth: float
var front_width: float 
var back_width: float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	np = get_parent()
	print(np.orbital_body_radius)
	var np_radius = np.orbital_body_radius
	front_length = np_radius * 2.0
	back_length = np_radius * 2.0
	orbit_depth = np_radius * .5
	front_width = np_radius / 5
	back_width = front_width / 2
	$Front.rebuild()
	$Back.rebuild()
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

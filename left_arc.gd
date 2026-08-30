extends Line2D

func rebuild():
	z_index = -1
	clear_points()
	var orbit = get_parent()
	add_point(orbit.left_arc_start_pos)
	var segments := int(orbit.front_length / 2.0)
	segments = max(segments, 16)
	print("segments = ", segments)
	for i in range(1, segments):
		var progress = float(i) / segments
		var angle = (PI / 2.0) * progress
		var x = cos(angle) * orbit.front_length
		var y = sin(angle) * orbit.orbit_depth
		add_point(Vector2(x,y))
	add_point(orbit.left_arc_end_pos)
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

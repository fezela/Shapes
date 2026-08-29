extends Line2D

func rebuild():
	z_index = -1
	print("runninng rebuild from orbit/front/front.gd")
	clear_points()
	var orbit = get_parent()
	print("back length = ", orbit.back_length)
	var length = orbit.back_length
	var depth = orbit.orbit_depth
	add_point(Vector2(length, -depth))
	add_point(Vector2(-length, -depth))
	width = orbit.back_width
	default_color = Color.FLORAL_WHITE
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

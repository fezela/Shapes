
extends Line2D

var orbit: Node2D
var length: float
# Called when the node enters the scene tree for the first time.

func rebuild():
	z_index = 1
	print("runninng rebuild from orbit/front/front.gd")
	clear_points()
	orbit = get_parent()
	print("front length = ", orbit.front_length)
	length = orbit.front_length
	var depth = orbit.orbit_depth
	add_point(Vector2(length, depth))
	add_point(Vector2(-length, depth))
	width = orbit.front_width
	default_color = Color.FLORAL_WHITE

func _ready() -> void:
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

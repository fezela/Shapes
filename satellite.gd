extends Node2D

var orbit
func rebuild():
	pass
	

func _draw():
	orbit = get_parent()
	var start_pos = orbit.satellite_start_pos
	#print("start_pos = ", start_pos)
	draw_circle(
		start_pos,
		orbit.satellite_radius,
		Color.LIGHT_GRAY)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

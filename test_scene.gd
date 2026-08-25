extends Node2D
@onready var nucleus = $OrbitalSystem/NucleusPlanet

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	nucleus.position = get_viewport_rect().size / 2 #center position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

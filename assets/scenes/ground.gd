extends TileMapLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	_input(get_local_mouse_position())
	pass

func _input(event):
	print(event)

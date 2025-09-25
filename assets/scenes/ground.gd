extends TileMapLayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var lastKnownMousePosition = Vector2.ZERO
	var currentMousePosition = TileMapLayer.new().map_to_local(get_local_mouse_position())
	
	if(_checkMouseMove(lastKnownMousePosition, currentMousePosition)):
		lastKnownMousePosition = currentMousePosition
		print(currentMousePosition)
	pass

func _input(event):
	print(event)
	
func _checkMouseMove(previousPosition, currentPosition) -> bool:
	if(previousPosition != currentPosition):
		return true
	return false

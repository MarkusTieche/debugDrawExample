extends Control
class Vector:
	var object  # The node to follow
	var property  # The property to draw
	var scale  # Scale factor
	var width  # Line width
	var color  # Draw color
	var value  # Draw color


	func _init(_object, _property, _scale, _width, _color):
		object = _object
		property = _property
		scale = _scale
		width = _width
		color = _color

	func draw(node, camera):
		var start = camera.unproject_position(object.global_transform.origin)
		var end = camera.unproject_position(object.global_transform.origin + object.get(property) * scale)
		node.draw_line(start, end, color, width)

var vectors = []  # Array to hold all registered values.

# var color = Color(0, 1, 0);

func _ready():
	vectors.clear()
	pass;

func _draw():
	var camera = get_viewport().get_camera();
	for vector in vectors:
		vector.draw(self, camera)
	pass # Replace with function body.

func add_vector(object, property, scale, width, color):
	vectors.append(Vector.new(object, property, scale, width, color))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	update(); 
	pass

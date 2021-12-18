extends Node

var velocity = Vector3(0,10,0);
var speed = Vector3(10,0,0);

func _ready():
	$debugNode.add_vector(self, "velocity", 1, 4, Color(0,1,0, 0.5))
	$debugNode.add_vector(self, "speed", 1, 4, Color(1,0,0, 0.5))

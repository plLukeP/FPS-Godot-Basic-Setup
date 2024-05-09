extends Node3D

@export var kNodes:Array[Node3D] = []
var current_node  = 0

func _physics_process(_delta: float) -> void:
#func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("world_rebase"):
		var next_node = current_node +1
		if next_node == kNodes.size() : next_node = 0
		var move_vector : Vector3 = kNodes[current_node].global_position - kNodes[next_node].global_position
		current_node =  next_node
		for kn in kNodes:
			kn.global_position += move_vector
		print("rebasing current node "+str(current_node)+ " :: " + str(kNodes[current_node].global_position))
	pass
	

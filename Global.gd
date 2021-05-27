extends Node

var node_creation_parent = null
var player = null

func instance_node(node, location, parents):
	
	var node_instance = node.instance()
	parents.add_child(node_instance)
	node_instance.global_position = location
	return node_instance

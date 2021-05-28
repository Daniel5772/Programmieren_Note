extends Node

var node_creation_parent = null

var player = null

var score = 0

var player_hp = 5

var damage_multiplier = 1

var damage = 1

var poits_per_kill = 1

var knockback = 6


func instance_node(node, location, parents):
	
	var node_instance = node.instance()
	parents.add_child(node_instance)
	node_instance.global_position = location
	return node_instance

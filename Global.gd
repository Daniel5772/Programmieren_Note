extends Node

var node_creation_parent = null

var player = null

var camera = null

var score = 0

var high_score = 0

var old_high_score = 0

var player_hp = 5

var poits_per_kill = 1

var knockback = 6

var bullet_2 = true

var is_in_world = false


func instance_node(node, location, parents):
	
	var node_instance = node.instance()
	parents.add_child(node_instance)
	node_instance.global_position = location
	return node_instance

func _ready():
	pause_mode = Node.PAUSE_MODE_PROCESS
	

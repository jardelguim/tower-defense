class_name WaveManager extends Node

@export var waves: Array[WaveData] = []
@export var enemy_scene : PackedScene
@export var path: Path3D
@export var enemy_container: Node3D

var spawn_timer = Timer.new()
var _current_wave: int = -1
var _alive_enemies: int = 0
var _spawn_left: int = 0

func _ready() -> void:
	_setup_timer()

func start_next_wave() -> void:
	pass

func spawn_enemy():
	var new_enemy = enemy_scene.instantiate()
	var new_enemy_slot = PathFollow3D.new()
	path.add_child(new_enemy_slot)
	new_enemy_slot.add_child(new_enemy)
	
func _setup_timer():
	spawn_timer.connect("timeout" , spawn_enemy)
	add_child(spawn_timer)
	spawn_timer.wait_time = 2.0
	spawn_timer.one_shot = false
	spawn_timer.start()

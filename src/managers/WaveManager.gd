class_name WaveManager extends Node

@export var waves: Array[WaveData] = []
@export var path: Path3D
@export var enemy_container: Node3D

var _current_wave: int = -1
var _alive_enemies: int = 0
var _spawn_left: int = 0

func start_next_wave() -> void:
	pass

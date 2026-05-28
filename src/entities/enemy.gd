class_name Enemy extends Node3D

@export var data: EnemyData

var health: float = 0.0
var progress: float = 0.0

var _path_follow: PathFollow3D = null

func _ready() -> void:
	pass

func initialize(path_follow: PathFollow3D) -> void:
	_path_follow = path_follow

func _process(_delta: float) -> void:
	pass

func take_damage(_amount: float) -> void:
	pass

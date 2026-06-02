class_name Enemy extends RigidBody3D

@export var data: EnemyData

var current_health: float = 0.0
var progress: float = 0.0

var _path_follow: PathFollow3D

func _ready() -> void:
	_path_follow = get_parent()

func initialize(path_follow: PathFollow3D) -> void:
	_path_follow = path_follow

func _process(delta: float) -> void:
	_path_follow.progress += data.speed * delta

func take_damage(_amount: float) -> void:
	pass

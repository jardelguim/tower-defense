class_name Base extends Node3D

@export var max_health: int = 100

var current_health: int = 0

func _ready() -> void:
	current_health = max_health

func take_damage(_amount: int) -> void:
	pass

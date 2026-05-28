class_name Bullet extends Node3D

@export var speed: float = 20.0

var damage: float = 0.0
var _target: Node3D = null

func initialize(target: Node3D, damage_amount: float) -> void:
	_target = target
	damage = damage_amount

func _process(_delta: float) -> void:
	pass

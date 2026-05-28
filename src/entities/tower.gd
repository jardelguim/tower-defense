class_name Tower extends StaticBody3D

@export var data: TowerData

@onready var range_area: Area3D = $RangeArea
@onready var attack_timer: Timer = $AttackTimer
@onready var fire_point: Marker3D = $FirePoint

func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	pass

func _select_target() -> Node3D:
	return null

func _fire() -> void:
	pass

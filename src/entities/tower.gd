extends StaticBody3D
class_name Tower 

@export var data: TowerData

@export var model : MeshInstance3D
@export var fire_point: Marker3D
@onready var range_area: Area3D = $RangeArea
@onready var attack_timer = Timer.new()

func _ready() -> void:
	_setup_timer()

func _process(_delta: float) -> void:
	pass

func _select_target() -> Node3D:
	return null

func _fire() -> void:
	print("%s shoot!" %data.display_name)

func _setup_timer():
	add_child(attack_timer)
	attack_timer.connect("timeout" , _fire)
	attack_timer.wait_time = data.attack_speed
	attack_timer.start()

func _setup_stats():
	pass

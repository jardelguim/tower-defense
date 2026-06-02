extends StaticBody3D
class_name Tower 

@export var data: TowerData

@export var model : MeshInstance3D
@export var fire_point: Marker3D
@export var range_area : Area3D

@onready var attack_timer = Timer.new()

func _ready() -> void:
	_setup_timer()

func _physics_process(delta: float) -> void:
	_look_at_target(delta)

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

func _look_at_target(delta):
	var insiderange = range_area.get_overlapping_bodies()
	if insiderange:
		var target = insiderange[0]
		var pos2d = Vector2(global_position.x , global_position.z)
		var target_pos2d = Vector2(target.global_position.x , target.global_position.z)
		var direction = -(pos2d - target_pos2d)
		rotation.y = lerp_angle(rotation.y , atan2(direction.x , direction.y) , delta / data.turn_rate)

extends StaticBody3D

@onready var range_area: Area3D = $RangeArea
@onready var model: MeshInstance3D = $Model
@export_range(5.0 , 25.0) var detection_range 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	%RangeCollision.shape.radius = detection_range

func _process(delta: float) -> void:
	var insiderange = range_area.get_overlapping_bodies()
	if insiderange:
		var target = insiderange[-1]
		var pos2d = Vector2(global_position.x , global_position.z)
		var target_pos2d = Vector2(target.global_position.x , target.global_position.z)
		var direction = pos2d - target_pos2d
		rotation.y = lerp_angle(rotation.y , atan2(direction.x , direction.y) , delta / 1)
		

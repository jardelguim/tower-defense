extends Node3D

@export var camera : Camera3D
@onready var marker: MeshInstance3D = $Marker

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("Click"):
		_shoot_ray()

func _shoot_ray():
	var mouse_pos = get_viewport().get_mouse_position()
	var ray_length = 1000
	var from = camera.project_ray_origin(mouse_pos)
	var to = from + camera.project_ray_normal(mouse_pos) * ray_length
	var space = get_world_3d().direct_space_state
	var ray_query = PhysicsRayQueryParameters3D.new()
	ray_query.from = from
	ray_query.to = to
	var raycast_result = space.intersect_ray(ray_query)
	
	if !raycast_result.is_empty():
		marker.global_position = raycast_result["position"]
		add_child(marker)

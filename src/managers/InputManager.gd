class_name InputManager extends Node

@export var camera: Camera3D

var selected_tower: TowerData = null

func select_tower(data: TowerData) -> void:
	selected_tower = data

func cancel_placement() -> void:
	selected_tower = null

func _input(_event: InputEvent) -> void:
	pass

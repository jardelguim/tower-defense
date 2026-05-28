extends Resource
class_name TowerData

@export var display_name: String = "Basic Tower"
@export var damage: float = 10.0
@export var attack_speed: float = 1.0
@export_range(5.0, 30.0) var range: float = 15.0
@export var cost: int = 50
@export var scene: PackedScene
@export var bullet_scene: PackedScene
@export var icon: Texture2D

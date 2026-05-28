extends CanvasLayer

@onready var health_label: Label = $VBoxContainer/HealthLabel
@onready var gold_label: Label = $VBoxContainer/GoldLabel
@onready var wave_label: Label = $VBoxContainer/WaveLabel

func _ready() -> void:
	EventBus.base_health_changed.connect(_on_health_changed)
	EventBus.gold_changed.connect(_on_gold_changed)
	EventBus.wave_started.connect(_on_wave_started)

func _on_health_changed(_current: int, _maximum: int) -> void:
	pass

func _on_gold_changed(_gold: int) -> void:
	pass

func _on_wave_started(_number: int) -> void:
	pass

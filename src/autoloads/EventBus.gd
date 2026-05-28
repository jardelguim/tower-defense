extends Node

signal game_started()
signal game_paused()
signal game_resumed()
signal game_ended(victory: bool)
signal gold_changed(gold: int)

signal wave_started(wave_number: int)
signal wave_ended(wave_number: int)
signal wave_will_spawn(data: Resource)

signal enemy_spawned(enemy: Node)
signal enemy_died(enemy: Node)
signal enemy_damaged(enemy: Node, damage: float)
signal enemy_attacked(enemy: Node, target: Node)
signal enemy_reached_end(enemy: Node)

signal tower_placed(tower: Node)
signal tower_aimed(tower: Node, target: Node)
signal tower_fired(tower: Node, target: Node)

signal base_health_changed(current: int, maximum: int)
signal base_destroyed()

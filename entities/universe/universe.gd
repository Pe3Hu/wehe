class_name Universe extends PanelContainer


@onready var god_scene = preload("res://entities/god/god.tscn")

func _ready() -> void:
	var _a = Time.get_unix_time_from_system()
	#
	init_gods()
	var battleground = %Battlegrounds.get_child(0)
	
	for _i in range(1, -1, -1):
		var god = %Gods.get_child(_i)
		god.battleground = battleground
		pass
	
	battleground.start_fight()
	
	var _b = Time.get_unix_time_from_system()
	print(_b - _a)
	
func init_gods() -> void:
	for _i in 2:
		var god = god_scene.instantiate()
		god.universe = self
		%Gods.add_child(god)

class_name Subbject extends PanelContainer



@export_range(0.0, 20.0, 1.0) var reload_time : float = 2.0:
	set(reload_time_):
		reload_time = reload_time_
		current_reload_time = reload_time * reload_time_multiplier
		
		if is_node_ready():
			%ReloadTimer.wait_time = current_reload_time
			var b = 1.0 / current_reload_time
			%Highlight.material.set_shader_parameter("Speed", 1.0 / current_reload_time)
			var a = %Highlight.material
			pass

var reload_time_multiplier: float = 1.0
var current_reload_time: float
var previous_boom_time: float


func launch() -> void:
	visible = true
	reload_time = reload_time
	previous_boom_time = Time.get_unix_time_from_system()
	%ReloadTimer.start()

func _on_reload_timer_timeout() -> void:
	print(["boom", Time.get_unix_time_from_system() - previous_boom_time])
	previous_boom_time = Time.get_unix_time_from_system()

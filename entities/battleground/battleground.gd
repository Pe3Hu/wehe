class_name Battleground extends PanelContainer



func start_fight() -> void:
	var god = %Gods.get_child(0)
	god.get_node("%BattleDomain").launch_subjects()

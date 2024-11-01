class_name God extends PanelContainer


@export var universe: Universe
@export var battleground: Battleground:
	set(battleground_):
		battleground = battleground_
		#universe.get_node("%Gods").remove_child(self)
		get_parent().remove_child(self)
		battleground.get_node("%Gods").add_child(self)


func _ready() -> void:
	%BattleDomain.add_subject()

class_name Domain extends PanelContainer


@onready var subject_scene = preload("res://entities/subject/subject.tscn")

@export var god: God
@export_enum("battle", "home") var type


func add_subject() -> void:
	#var subject = Subbject.new()
	var subject = subject_scene.instantiate()
	%Subjects.add_child(subject)
	pass
	
func launch_subjects() -> void:
	for subject in %Subjects.get_children():
		subject.launch()

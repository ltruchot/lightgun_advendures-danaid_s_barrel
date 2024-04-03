extends Sprite2D

# Précharge la scène du Label "Touché".
var touched_label_scene = preload("res://message_label.tscn")


func _ready():
	set_process_input(true)  # Assurez-vous que le sprite est cliquable.

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		var local_click_position = to_local(event.global_position)
		if self.get_rect().has_point(local_click_position):
			show_message(event.global_position)
			
			


func show_message(click_position: Vector2):
	var message_instance = touched_label_scene.instantiate()
	get_parent().add_child(message_instance)
	message_instance.global_position = click_position

	var animation_player = message_instance.get_node("AnimationPlayer")
	if animation_player:
		animation_player.play("FadeOut")

		# Connecte le signal à la méthode de rappel.
		animation_player.connect("animation_finished", Callable(touched_label_scene, "_on_animation_finished"))


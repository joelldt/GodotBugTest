extends Button

@export var item: Item

@onready var audio_stream_player: AudioStreamPlayer2D = $AudioStreamPlayer

func _ready() -> void:
	audio_stream_player.stream = item.soundEffect
	self.text = item.itemName


func _on_pressed() -> void:
	audio_stream_player.play()

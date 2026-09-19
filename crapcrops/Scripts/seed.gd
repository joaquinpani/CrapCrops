extends Area2D

@export var seed_type : String


func _on_body_entered(body: CharacterBody2D) -> void:
	place_seed_to_inventory()

func place_seed_to_inventory():
	for i in range(3):
		if Global.seed_inventory[i]["quantity"] != 0:
			continue
		else:
			Global.seed_inventory[i]["seed_type"] = seed_type
			Global.seed_inventory[i]["quantity"] += 1
			pick_up_seed()
			
func pick_up_seed():
	queue_free()

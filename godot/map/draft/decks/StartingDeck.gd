extends Resource

class_name StartingDeck

export var id : String
export var name : String
export var cards : Array = [Object(), Object(), Object(), Object()] # DraftCard
export var nexts : Array = [] # DraftCard
export var shuffle_before_dealing := true
export var skip_first_draft := false

func get_id() -> String:
	return self.resource_path.get_basename().get_file()
	
func get_name() -> String:
	return name
	
func deal_cards() -> Array:
	var all_cards = cards.duplicate()
	
	if shuffle_before_dealing:
		all_cards.shuffle()
		
	return all_cards
	
func get_nexts() -> Array:
	return nexts
	
func get_skip_first_draft() -> bool:
	return skip_first_draft
	

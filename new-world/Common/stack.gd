class_name Stack

extends RefCounted

var _items: Array = []

# Add an element to the top
func push(item: Variant) -> void:
	_items.push_back(item)
	
# Remove and return the top element
func pop() -> Variant:
	if is_empty():
		push_error("Cannot pop from an empty stack.")
		return null
	return _items.pop_back()
	
# View the top element without removing it
func peek() -> Variant:
	if is_empty():
		return null
	return _items[-1]
	
# Check if the stack is empty
func is_empty() -> bool:
	return _items.is_empty()
		
# Get total number of items
func size() -> int:
	return _items.size()
	
# Clear the entire stack 
func clear() -> void:
	_items.clear()

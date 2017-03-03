class TodoList
	def initialize(to_do_list)
		@to_do_list = to_do_list
		


	end
	def get_items
		@to_do_list
	
	end
	def add_item(item)
		@to_do_list << item
	end
	def delete_item(item)
		@to_do_list.delete(item)
	end
	def get_item(integer)
		@to_do_list[integer]
	end
end
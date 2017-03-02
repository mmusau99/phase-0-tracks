def create_list(groceries)
  
 $grocery_list = groceries.split(" ")
 $quantity= []


 $grocery_list.length.times do
   $quantity << 1
 end

 $quantity
 $grocery_list
end 

def add_item(additional_item, quantity=nil)
  if additional_item.include?(" ")
    additional_item_list = additional_item.split(" ")
    additional_item_list.map! do |additional_item|
    $grocery_list << additional_item
    end
    $grocery_list
  elsif additional_item.class == String && quantity == nil
    
    
  $grocery_list <<  additional_item
  elsif additional_item.class == Array
  $grocery_list << additional_item
   $quantity << 1
  elsif additional_item.class ==String && quantity != nil
   $quantity << quantity
   $grocery_list <<  additional_item
  end
   
  
end
def remove_item(deleted_item)
  if $grocery_list.include?(deleted_item)
    deleted_index =$grocery_list.index(deleted_item)
    $grocery_list.delete_at(deleted_index)
  end
  $grocery_list
end

def update_quantity(item,quantity)
  $full_list = [$grocery_list, $quantity]
  
 item_index = $grocery_list.index(item)
 $quantity[item_index] = quantity
 
   $full_list
end




create_list("carrots apples")
 add_item("seafood peppers", 6)
#remove_item("carrots")
#update_quantity("apples", 5)

require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.each do |hash|
    hash.each do |key, value|
      if value == name
        return hash
      end
    end
  end
  nil
end




def consolidate_cart(cart)
  checkout = []
  index = 0 
  while index < cart.length do 
    item = find_item_by_name_in_collection(cart[index][:item], checkout)
    if item 
      new_index = 0 
      while new_index < checkout.length do 
        if checkout[new_index][:item] == item[:item]
          binding.pry
          checkout[new_index][:count] += 1 
        end 
        new_index += 1 
      end 
    else
      cart[index][:count] = 1 
      checkout << cart[index]
    end 
    index += 1 
  end
  checkout
  end 

  





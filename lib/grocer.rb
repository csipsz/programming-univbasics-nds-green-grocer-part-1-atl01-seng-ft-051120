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
  row_index = 0 
  while row_index < cart.length do 
    item = find_item_by_name_in_collection(cart[row_index][:item], checkout)
    if item 
      element_index = 0 
      while element_index < checkout.length do 
        if checkout[element_index][:item] == item[:item]
          binding.pry
          checkout[element_index][:count] += 1 
        end 
        element_index += 1 
      end 
    else
      cart[row_index][:count] = 1 
      checkout << cart[row_index]
    end 
    row_index += 1 
  end
  checkout
  end 

  





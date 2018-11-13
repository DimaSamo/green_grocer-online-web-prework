def consolidate_cart(cart)
  return_hash={}
  cart.each do |item_hash|
  	item_hash.each do |item, data|
  		if !return_hash.has_key?(item)
  			return_hash[item]=data
  			return_hash[item][:count] = 1
  		else
  			return_hash[item][:count] += 1
  		end
  	end
  end
  	return_hash
end

def apply_coupons(cart, coupons)
  cart = consolidate_cart(cart)

end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end

def consolidate_cart(cart)
  #def consolidate_cart(cart)
  	return_hash={}
  	cart.each do |item_hash|
  		item_hash.each do |item, data|
  			if !return_hash.haskey?(item)
  				return_hash[item]=data
  				return_hash[item][:count] = 1
  				binding.pry
  			else
  				return_hash[item][:count] += 1
  			end
  		end
  	end
  	return_hash
  end
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end

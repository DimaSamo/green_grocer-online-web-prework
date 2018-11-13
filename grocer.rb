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
  coupons.each do |coupon|
    item_key = coupon[:item]
    if cart.has_key?(item_key)
      if coupon[:num] == cart[item_key][:count]
        clearance=cart[item_key][:clearance]
        cart.delete(item_key)
        cart[item_key + "W/COUPON"] = {price: coupon[:cost], clearance: clearance, count: 1}
      end
    end
  end
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end

require 'pry'
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
  coupons.each do |coupon|
    item_key = coupon[:item]
    if cart.has_key?(item_key)
    #  if coupon[:num] == cart[item_key][:count]
    #    clearance=cart[item_key][:clearance]
    #    cart.delete(item_key)
    #    cart[item_key + " W/COUPON"] = {price: coupon[:cost], clearance: clearance, count: 1}
    #  elsif cart[item_key][:count] % coupon[:num] == 0
    #    amount = cart[item_key][:count] / coupon[:num]
    #    clearance=cart[item_key][:clearance]
    #    cart.delete(item_key)
    #    cart[item_key + " W/COUPON"] = {price: coupon[:cost], clearance: clearance, count: amount}
    #  elsif cart[item_key][:count] > coupon[:num]
        amount = cart[item_key][:count] / coupon[:num]
        clearance=cart[item_key][:clearance]
        cart[item_key + " W/COUPON"] = {price: coupon[:cost], clearance: clearance, count: amount}
        cart[item_key][:count] -= coupon[:num]
    #  end
    end
  end
  #binding.pry
  cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end

learn_cart = {
  "AVOCADO" => {:price => 3.0, :clearance => true, :count => 3},
  "KALE"    => {:price => 3.0, :clearance => false, :count => 1}
}

coupons = [{:item => "AVOCADO", :num => 2, :cost => 5.0}]
apply_coupons(learn_cart, coupons)

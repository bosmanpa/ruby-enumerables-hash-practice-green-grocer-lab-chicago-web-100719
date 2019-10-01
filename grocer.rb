def consolidate_cart(cart) 
  new_cart = {} 
  cart.each do |items_array| 
    items_array.each do |item, attribute| 
      new_cart[item] ||= attribute 
      new_cart[item][:count] ? new_cart[item][:count] += 1 :   
      new_cart[item][:count] = 1 
  end 
end 
new_cart 
end

def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    coupon.each do |attribute, value|
      name = coupon[:item]
      
      if cart[name] && cart[name][:count] >= coupon:num]
 end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end

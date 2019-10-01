def consolidate_cart(cart) 
new_cart = {}
  cart.each do |item|
    name = item.keys[0]
    new_cart[name] = item.values[0]
    
    if new_cart[name][:count] 
    new_cart[name][:count] += 1
    else
      new_cart[name][:count] = 1
    end
  end
  new_cart
end

def apply_coupons(cart, coupons) 
  coupons.each do |coupons|
    name = coupon[:item]
    item_num = coupon[:num]
    cart_item = cart[name]




end


def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end

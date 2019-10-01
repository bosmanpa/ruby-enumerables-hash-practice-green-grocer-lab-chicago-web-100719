def consolidate_cart(cart) 
consolidated_cart = {}

  cart.each do |item|
    name = item.keys[0]

    consolidated_cart[name] = item.values[0]
    if consolidated_cart[name][:count] 
    consolidated_cart[name][:count] += 1
    else
      consolidated_cart[name][:count] = 1
    end
  end
  consolidated_cart
end

def apply_coupons(cart, coupons) 
  coupons.each do |coupon| 
  
end


def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end

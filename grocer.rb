def consolidate_cart(cart) 
consolidated_cart = {}

  cart.each do |item|
    name = item.keys[0]

    consolidated_cart[item_name] = item.values[0]
    if consolidated_cart[item_name][:count] 
      consolidated_cart[item_name][:count] += 1
    else
      consolidated_cart[item_name][:count] = 1
    end
  end

  consolidated_cart
end

def apply_coupons(cart, coupons) 
  
  coupons.each do |coupon| 
    coupon.each do |attribute, value| 
      name = coupon[:item] 
    
      if cart[name] && cart[name][:count] >= coupon[:num] 
        if cart["#{name} W/COUPON"] 
          cart["#{name} W/COUPON"][:count] += 1 
        else 
          cart["#{name} W/COUPON"] = {:price => coupon[:cost], 
          :clearance => cart[name][:clearance], :count => 1} 
        end 
  
      cart[name][:count] -= coupon[:num] 
    end 
  end 
end 
  cart 
end


def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end

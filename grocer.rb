def consolidate_cart(cart) 
new_cart = {}
  cart.each do |hash|
    hash.each do |item, price|
    
    if new_cart[item]
    new_cart[item][:count] += 1
    else
      new_cart[item] = price
      new_cart[item][:count] = 1
    end
  end
end
  new_cart
end

def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    item = coupon[:item]

    if cart[item] && cart[item][:count] >= coupon[:num]
      if cart["#{item.upcase} W/COUPON"]
        cart["#{item.upcase} W/COUPON"][:count] += coupon[:num]
      else
        cart["#{item.upcase} W/COUPON"] = { price: coupon[:cost] / coupon[:num], count: coupon[:num], clearance: cart[item][:clearance] }
      end
    else
      return cart
    end

    cart[item][:count] -= coupon[:num]
  end
  cart
end



def apply_clearance(cart)
cart.each do |item, properties|
    if properties[:clearance] == true
      properties[:price] = (properties[:price] * 0.8).round(2)
    end
  end
  cart
end



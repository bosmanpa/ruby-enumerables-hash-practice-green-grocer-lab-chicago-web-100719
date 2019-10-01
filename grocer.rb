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
  new_cart
end

def apply_coupons (_cart, coupons)
  coupons.each do |coupon_hash|
    if consol_cart[coupon_hash[:item]] && coupon_hash[:num] <= consol_cart[coupon_hash[:item]][:count]
      new_item = coupon_hash[:item] + " W/COUPON"
      if consol_cart[new_item]
        consol_cart[new_item][:count] += coupon_hash[:num]
      else consol_cart[new_item] = {
        :price => coupon_hash[:cost]/coupon_hash[:num],
        :clearance => consol_cart[coupon_hash[:item]][:clearance],
        :count => coupon_hash[:num]
      }
      end
      consol_cart[coupon_hash[:item]][:count] -= coupon_hash[:num]
    end
  end
  return consol_cart
end



def apply_clearance(cart)
cart.each do |item, properties|
    if properties[:clearance] == true
      properties[:price] = (properties[:price] * 0.8).round(2)
    end
  end
  cart
end

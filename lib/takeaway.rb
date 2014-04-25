class Takeaway 

def cuisine
 { :lasagne => 8, :bolognase => 6, :carbonara => 5, :seafood => 4 }
end

def placing_order(cuisine_and_quantities, order_total)
the_price = review_the_price_of(cuisine_and_quantities)
raise_order_total_error if the_price != order_total
true
end


def review_the_price_of(cuisine_and_quantities)
  cuisine_and_quantities.inject(0) do |price, (dish, quantity)|
    price += cuisine[dish] * quantity
  end
end

def raise_order_total_error
  raise RuntimeError, 'Sorry you have input the wrong total amount. Please try and order again.'
  end












end




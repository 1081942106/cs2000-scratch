use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

fun size-price(s :: String)->Number:
  doc:"output the price of pizza corresponding to the size"
  if s == "personal":
    8
  else:
    14
  end
where:
  size-price("personal") is 8
  size-price("large") is 14
end


fun topping-price(n :: Number)->Number:
  doc:"output the extra price of the toppings coresponding to the number of them"
  if n <= 2:
    0
  else:
    (n - 2) * 1.25
  end
  
where: 
  topping-price(1) is 0
  topping-price(4) is 2.5
end


fun order-total(s :: String, n :: Number, p :: Boolean)->Number:
  doc:"output the final price in total for the whole order"
  if p:
    (size-price(s) + topping-price(n)) - 2
  else:
    (size-price(s) + topping-price(n)) + 0
  end
where:
  order-total("personal",4,true) is 8.5
  order-total("large",0,false) is 14
end


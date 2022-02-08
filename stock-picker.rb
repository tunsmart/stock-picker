def stock_picker(stock_prices)
  hash = {}
  
  loop_start = stock_prices.length-1
   loop_start.times do 
      end_index = stock_prices.length-1
      loop2_start = stock_prices.length-2
      loop2_start.downto(0) do |index|
        price_diff = stock_prices[end_index]-stock_prices[index]
        hash[price_diff] = [index,end_index] if price_diff > 0
      end
   stock_prices.pop
   end
  
  keys = hash.keys.sort
  hash[keys.last]
  
end


p stock_picker([2,3,1,9,15,8,6,1,20])

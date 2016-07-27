def stock_picker( daily_price_array )
	best_profit = 0 
	low_buy = 0
	high_sell = 0
	
	daily_price_array.each_with_index do |buy_price, buy_day|
		daily_price_array.each_with_index do |sell_price, sell_day|
			if buy_day < sell_day
				profit = sell_price - buy_price
			  if profit > best_profit
						best_profit = profit
						low_buy = buy_day
						high_sell = sell_day
				end
			end
		end
	end
	puts "In this period, you should have bought on day #{low_buy} and should have sold on day #{high_sell}. This would have given a profit of $#{best_profit}"
end


stock_picker( [4, 5, 1, 17, 6, 24, 8, 7] )

stock_picker( [17, 3, 6, 9, 15, 8, 6, 1, 10] )

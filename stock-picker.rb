def stock_picker(prices)

  bestDays = []
  difference = 0

  i = 0

  while i < prices.length

    prices[i..prices.length].each_with_index do | item, index |

      if item - prices[i] > difference
        difference = item - prices[i]
        bestDays[0] = i
        bestDays[1] = index + i
        # I don't really like this way of finding the index point, but it works.
      end

    end

    i += 1

  end

  puts "Buy on day #{bestDays[0]} and sell on day #{bestDays[1]} for a profit of #{difference}."
  bestDays

end

stock_picker([17,3,6,9,15,8,6,1,10])

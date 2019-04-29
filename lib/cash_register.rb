
require 'pry'

class CashRegister

	attr_accessor :total, :discount

  def initialize(discount = 0, total = 0)
  	@discount = discount
  	@total = total
  	@items_array = []
  	# @price_array = []
  	@last_price = 0
  end

  def add_item(item, price, quantity = 1)
  	# @price_array << price
  	@last_price = price * quantity
  	@new_total = @total += (price * quantity)
  	while quantity > 0
  		@items_array << item
  		quantity -=1
  	end
  	@new_total
  end

  def apply_discount
  	@total = @total - ((@total * @discount)/100)
  	if discount > 0
  		"After the discount, the total comes to $#{@total}."
  	else
  		"There is no discount to apply."
  	end
  end

  def items
  	@items_array
  end

  def void_last_transaction
  	@total = @total - @last_price
  	# @total = @total - @price_array.last
  end
end

# items_array = [
# 	CashRegister.new("eggs", 2),
# 	CashRegister.new("bread", 5),
# 	CashRegister.new("apple", 6)
# ]


# bnding.pry

require "pry"

class CashRegister

  attr_accessor :discount, :total, :pricelog

  def initialize(emp_dis=0)
    @cart = []
    @pricelog = []
    @total = 0
    @discount = emp_dis

  end

  #if the quantity passed in it is larger than 0, add the increased price to the total
  #using the quantity variable iterate through a while loop to add each item individually
  # to the cart.

  def add_item(item, price, quantity=1)
    if quantity > 1
      @total = @total + (quantity * price)
      @pricelog << (quantity * price)
      while quantity > 0
        @cart << item
        quantity -= 1
      end
    else
      @total = @total + price
      @cart  << item
      @pricelog << (quantity * price)
    end
  end

  def apply_discount(discount=@discount)
    if discount > 0
      @total = @total - ((@total * discount)/100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @cart
  end

  def void_last_transaction
    @total = @total - @pricelog.last
  end

end



  # def add_item(item, price, quantity=1)
  #   if quantity == 1
  #     @total = @total + price
  #     @cart  << "#{item} Quanity:#{quantity}"
  #   else
  #     @total = @total + (quantity * price)
  #     @cart  << "#{item} Quanity:#{quantity}"
  #   end
  # end

require 'pry'

class CashRegister
  attr_accessor :discount, :total, :array, :last_item

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @array = []
    @last_item = 0
  end

  def self.total
    @total = total
  end

  def self.discount
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @total = price * quantity + total
    @last_item = price * quantity
    while quantity > 0
       @array << title
       quantity -= 1
    end
    @total
  end

  def apply_discount
    @total = @total - (@total * @discount / 100)
    if @discount > 0
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @array
  end

  def void_last_transaction
    @total = @total - @last_item
    #binding.pry
  end

end

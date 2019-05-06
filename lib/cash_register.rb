class CashRegister
  attr_accessor :total, :discount, :cart

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def add_item(title, price, quantity = 1)
    @total = total + price * quantity
    @recent_item = quantity * price
    quantity.times do @cart << title
    end
  end

  def apply_discount
    if discount <= 0
      "There is no discount to apply."
    else
    @total = @total - ((@total * @discount) / 100)
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @cart
  end

  def void_last_transaction
    @total = @total.to_f - @recent_item.to_f
  end

end

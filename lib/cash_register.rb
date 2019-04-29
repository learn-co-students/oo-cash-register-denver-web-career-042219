class CashRegister

  attr_accessor :discount, :total, :items
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
      @total
  end

  def add_item(item, price, qt=1)
    @last_price = price * qt
      	@new_total = @total += (price * qt)
      	while qt > 0
      		@items << item
      		qt -=1
      	end
      	@new_total
      end


  def apply_discount

    if @discount > 0

      @total = @total - ((@total*@discount) / 100)
      "After the discount, the total comes to $#{@total}."

    else
    "There is no discount to apply."

  end
  end

  def items
  @items
  end


  def void_last_transaction
    @total = @total - @last_price
  end
end

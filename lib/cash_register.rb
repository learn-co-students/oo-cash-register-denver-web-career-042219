require 'pry'

class CashRegister

    attr_accessor :discount, :total, :pricelog

    def initialize (emp_dis=0)
      @cart = []
      @pricelog = []
      @total = 0
      @discount = emp_dis
    end


    def add_item(item, price, quantity=1)
      # total + price, increases total
      # also accepts quantity
      # doesn't forget previous total

      if quantity > 1
        @total = @total + (quantity * price)
        @pricelog  << price
        while quantity > 0
          @cart << item
          quantity -= 1
        end
      else
        @total = @total + price
        @cart << item
        @pricelog << price
      end
    end

def items
  @cart
end

  # returns an array of all items that have been added

def apply_discount
  if @discount > 0
    @total = @total - ((@total*@discount) / 100)
     "After the discount, the total comes to $#{total}."
  else
     "There is no discount to apply."
  # initalized with an employee discount applies the discount to total price
  # returns success message with updated total
  # reduces the total
  # item not innitaited with emp discount returns a string error
  # "there is no discount to apply"
  end
end

def void_last_transaction
  # subtracts the last transaction from the total
  @total = @total - @pricelog.last
end

end

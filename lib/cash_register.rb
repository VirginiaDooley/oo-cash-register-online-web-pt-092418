require 'pry'
class CashRegister

  attr_accessor :total, :discount, :items

  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total = (price * quantity) + self.total
    #refactored as self.total += price * quantity
      quantity.times {@items << title} #times is an iterator that runs a line of code x.times
     @last_transaction_amount = @total
  end

  def apply_discount

     #total is equal to 1000 and discount is equal to 200
    if self.discount > 0
      amount_with_decimal = self.discount.to_f/100
      self.total = self.total - (self.total * (amount_with_decimal))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction_amount
    #think about where do you have access to the last price that was added to your total. this function was supposed to remove the last price that was added.
  end

end

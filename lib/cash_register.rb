require "pry"

class CashRegister

  attr_accessor :total, :discount, :items, :last_trasaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.last_trasaction = price *  quantity
    self.total += price * quantity
    quantity.times do
      self.items << title
    end
  end

  def apply_discount
    if discount > 0
      discount_val = @total * (@discount * 0.01)
      @total -= discount_val
      "After the discount, the total comes to $#{@total.to_i}."
    else 
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_trasaction
  end



end
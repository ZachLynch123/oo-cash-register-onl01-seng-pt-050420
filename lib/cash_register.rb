require 'pry'
class CashRegister
  
  attr_accessor :total, :discount, :old_total
  
  def initialize(discount=nil)
    @total = 0 
    @discount = discount
    @title = []
    @old_total = 0
  end
  
  def add_item(title, price, quantity = 1)
    @title << title
    i = 0 
    if i < quantity
      @title << title 
      i += 1 
    end
    @old_total = total
    @total += price * quantity
  end
  
  def apply_discount
    if @discount != nil
      @discount = @discount.to_f 
      @discount = @discount/100
  
      @total = @total - (@discount * total)
      @total = @total.to_i
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    @title
  end
  
  
  
  
  
  
  
  
  
end
require 'pry'
class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(discount=nil)
    @total = 0 
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @title = title 
    @old_totlal = total
    @total += price * quantity
  end
  
  def apply_discount
    @discount = @discount.to_f 
    binding.pry

    @discount = @discount/100

    @total = @total - @discount

    end
  
end
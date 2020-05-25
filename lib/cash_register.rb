class CashRegister
  
  attr_accessor :total, :discount
  

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    @total += (price * quantity)
  end
  
  def apply_discount
    employee_discount = @total * (@discount / 100)
    @total -= employee_discount
    
  end

end
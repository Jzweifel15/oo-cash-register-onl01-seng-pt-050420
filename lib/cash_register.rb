class CashRegister
  
  attr_accessor :total, :discount, :items
  

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
    if quantity > 1 
      i = 0 
      while counter < quantity
        @items.push(item)
        i += 1
      end
    else 
      @items.push(item)
    end
    @total += (price * quantity)
  end
  
  def apply_discount
    if @discount != 0 
      employee_discount = @total * (@discount / 100)
      @total -= employee_discount
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    @items
  end

end
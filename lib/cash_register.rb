class CashRegister
  
  attr_accessor :total, :discount, :items
  

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
    @total += (price * quantity)
    i = 0 
    while i < quantity
      @items.push(item)
      i += 1
    end
  end
  
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end
    @total -= @total * @discount / 100
    return "After the discount, the total comes to $#{@total}."
  end 
  
  def items
    @items
  end
  
  def void_last_transaction
    
  end

end
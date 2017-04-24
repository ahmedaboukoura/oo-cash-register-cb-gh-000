
class CashRegister
  attr_accessor :items, :discount, :total, :last_transaction

def initialize(discount=0)
  @total = 0
  @discount=discount
  @items = []
  @last_transaction = 0
end

def total
  @total
end
 def add_item(title,price,quantity=1)
  self.total += (price * quantity)
  @last_transaction = price * quantity
  quantity.times do
    @items << title
  end
 end
 def apply_discount
   if @discount > 0
     self.total *= (100.0 - @discount)/100
  "After the discount, the total comes to $#{total.to_i}."
else
  "There is no discount to apply."
end
end
def void_last_transaction
  self.total = total - @last_transaction
end
end

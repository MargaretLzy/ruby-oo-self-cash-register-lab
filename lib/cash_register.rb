class CashRegister

attr_accessor :total,:discount
def initialize(discount=0)
@total = 0
@discount = discount
@items =[]
end

def add_item(title, price,quantity=1)
@quantity = quantity
@total+=price* quantity
quantity.times do |index|
@items << title
@last_trans= price*quantity
end
end

def apply_discount()
    if @discount != 0
      @discount = @discount/100.to_f
      @total = (@total - (@total * (@discount))).to_i
 "After the discount, the total comes to $#{@total.to_i}."
 else
 return "There is no discount to apply."
 end
end
def items
  @items
end

def void_last_transaction
@total= @total -@last_trans
end


end


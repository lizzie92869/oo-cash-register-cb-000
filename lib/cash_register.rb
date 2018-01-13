class CashRegister

attr_accessor :discount, :total, :items, :last_transaction

	def initialize(discount = 0)
	@total = 0
	@discount = discount
	@items = []
	
	end

	  def apply_discount
    if discount != 0
      @total = (@total * ((100.0 - discount)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  	def add_item(title, price, quantity = 1)
  		@total += price*quantity
  		quantity.times do
  		items << title
  		end
  		@last_transaction = price * quantity
  	end

	def void_last_transaction
		@total = @total - @last_transaction
	end


end

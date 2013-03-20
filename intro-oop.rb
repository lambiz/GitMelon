class Shoe

	attr_accessor :price, :size, :colour

	#konstruktor
	def initialize(price, size, colour)
		self.price = price
		self.size = size
		self.colour = colour
	end

	def discount
		return self.price * 0.9
	end

	def description
		return "A #{self.colour} shoe in size #{self.size} that cost #{self.price}€"
	end

end

sko1 = Shoe.new(123, 43, "black")
puts sko1.description
puts sko1.discount
class Rectangle

	attr_accessor :base, :height

	def initialize(base, height)
		self.base = base
		self.height = height
	end

	def area
		return self.base * self.height
	end

	def perimeter
		return self.base * 2 + self.height * 2
	end
end

class Square < Rectangle

	def initialize(base)
		self.base = base
		self.height = base
	end
end

class Circle

	attr_accessor :radius
	def initialize(radius)
		self.radius = radius
	end
	def area
		return self.radius ** 2 * Math::PI
	end
	def perimeter
		return self.radius * 2 * Math::PI
	end
end

#rec = Rectangle.new(4,5)
#rec = Square.new(5)
rec = Circle.new(5)
puts rec.area
puts rec.perimeter

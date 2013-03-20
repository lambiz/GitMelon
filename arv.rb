class Person

	attr_accessor :name, :pnr

	def initialize(name, pnr)
		self.name = name
		self.pnr = pnr
	end

end

class Student < Person

	def skolka
		puts "#{self.name} springer hem!"
	end
end

class Teacher < Person

	def name
		return "Mr #{super}"
	end
end


te1 = Teacher.new("Adam", "233-3232")
puts te1.name


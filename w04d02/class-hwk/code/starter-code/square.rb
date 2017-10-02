class square
	attr_accessor :name :length, :height, :perimeter, :area

	def initialize(name, length, height, perimeter, area)
		self.name = name
		self.length = length
		self.height = height
		self.perimeter = perimeter
		self.area = area
	end
	side_length = 5
	def calculate_area length
  		length ** 2
	end

	def calculate_perimeter length
  		length * 4
	end
	area = calculate_area side_length
	perimeter = calculate_perimeter side_length

	puts "Area: #{area} Perimeter: #{perimeter}"
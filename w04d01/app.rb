puts "Which Calculator? (ad)vanced or (b)asic?"
 which_calc = gets.chomp

if which_calc == "b"
	puts "Do you wish to (a)dd, (s)ubtract, (m)ultiply, (d)ivide?"
	user_input = gets.chomp

end

if user_input == "a"
	puts "Insert your first number"
	num1 = gets.chomp.to_f
	puts "Insert your second number"
	num2 = gets.chomp.to_f

	puts num1 + num2
 

elsif user_input == "s"
	puts "Insert your first number"
	num1 = gets.chomp.to_f
	puts "Insert your second number"
	num2 = gets.chomp.to_f

	puts num1 - num2



elsif user_input == "m"
	puts "Insert your first number"
	num1 = gets.chomp.to_f
	puts "Insert your second number"
	num2 = gets.chomp.to_f

	puts num1 * num2

elsif user_input == "d"
	puts "Insert your first number"
	num1 = gets.chomp.to_f
	puts "Insert your second number"
	num2 = gets.chomp.to_f

	puts num1 / num2
end

if which_calc == "ad"
	puts "Do you want to (p)ower or (sq)uare root or calculate (bmi)?"
	user_input = gets.chomp

end

if user_input == ("p")
	puts "Insert your first number"
	num1 = gets.chomp.to_f
	puts "Insert your second number"
	num2 = gets.chomp.to_f

	puts num1 ** num2


elsif user_input == ("sq")
	puts "Insert the number you would like to sqrt"
	num1 = gets.chomp.to_f

	puts Math.sqrt(num1)

elsif user_input == ("bmi")
	puts "Do you want (i)mperial or (me)tric?"
	user_input = gets.chomp
	if user_input == ("me")
		puts "Insert your weight in kilograms"
		num1 = gets.chomp.to_f
		puts "Insert your height in M"
		num2 = gets.chomp.to_f

	puts num1/(num2 * num2)

elsif user_input == ("i")
	puts "Insert your weight in pounds"
	num1 = gets.chomp.to_f
	puts "Insert your Height in Inches"
	num2 = gets.chomp.to_f
	puts (num1/(num2 * num2)) * 703


end
end
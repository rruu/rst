hello = "Введи строку для вычисления (возможны действия * / + - )\nНапример '3*2' : "
print hello
while 2+2==4
	str = gets.to_s
	if str.include? "*"
		str = str.strip.split("*")
		res = str[0].to_f * str[1].to_f
		puts "#{str[0].to_f} умножить на #{str[1].to_f} результат: #{res}"
		print hello
	elsif str.include? "/"
		str = str.strip.split("/")
		res = str[0].to_f / str[1].to_f
		if str[1].to_f == 0
			puts "Делить на ноль нельзя"
			exit
		end
		puts "#{str[0].to_f} разделить на #{str[1].to_f} результат: #{res}"
		print hello
	elsif str.include? "+"
		str = str.strip.split("+")
		res = str[0].to_f + str[1].to_f
		puts "#{str[0].to_f} сложить на #{str[1].to_f} результат: #{res}"
		print hello
	elsif str.include? "-"
		str = str.strip.split("-")
		res = str[0].to_f - str[1].to_f
		puts "#{str[0].to_f} вычесть на #{str[1].to_f} результат: #{res}"
		print hello
	end
end

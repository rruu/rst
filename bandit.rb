print "\tХотите поиграть [У/n]"
yesno = gets.strip.upcase
print "\tСколько вам лет "
age = gets.strip.to_i
print "\tСколько попыток за раз: "
n = gets.strip.to_i

	if yesno == "Y" && age >= 18
		money = 100
		while money > 1 do
			n.times do
			if money < 1
				puts ""
				puts ""
				puts "Деньги закончились ;("
				exit
			end

				x = rand(1..9)
				y = rand(1..9)
				z = rand(1..9)
				
		
				if x == 0 && y == 0 && z == 0
					puts ""
					puts "Ваш балан обнулен"
					money = 0
					puts "Выпало #{x} #{y} #{z} | Ваш баланс: #{money} "
					exit
					
				else
					
					sleep(0.1)
					print "\r [/] Выпало #{x} #{y} #{z} | Ваш баланс: #{money} "
					
				end
		
				if x == 1 && y == 1 && z == 1
					puts ""
					puts "Ваш балан обновлен"
					money = money + 10
					puts "Выпало #{x} #{y} #{z} | Ваш баланс: #{money} "
					
				else
					
					sleep(0.1)
					print "\r [-] Выпало #{x} #{y} #{z} | Ваш баланс: #{money} "
					 
				end
		
				if x == 2 && y == 2 && z == 2
					puts ""
					puts "Ваш балан обновлен"
					money = money + 20
					puts "Выпало #{x} #{y} #{z} | Ваш баланс: #{money} "
					
				else
					
					sleep(0.1)
					print "\r [\\] Выпало #{x} #{y} #{z} | Ваш баланс: #{money} "
					 
				end
		
				if x == 3 && y == 3 && z == 3
					puts ""
					puts "Ваш балан обновлен"
					money = money + 30
					puts "Выпало #{x} #{y} #{z} | Ваш баланс: #{money} "
					
				else
					
					sleep(0.1)
					print "\r [-] Выпало #{x} #{y} #{z} | Ваш баланс: #{money} "
					 
				end
		
				if x == 4 && y == 4 && z == 4
					puts ""
					puts "Ваш балан обновлен"
					money = money + 40
					puts "Выпало #{x} #{y} #{z} | Ваш баланс: #{money} "
					
				else
					
					sleep(0.1)
					print "\r [|] Выпало #{x} #{y} #{z} | Ваш баланс: #{money} "
					 
				end
		
				if x == 5 && y == 5 && z == 5
					puts ""
					puts "Ваш балан обновлен"
					money = money + 50
					puts "Выпало #{x} #{y} #{z} | Ваш баланс: #{money} "
					
				else
					
					sleep(0.1)
					print "\r [/] Выпало #{x} #{y} #{z} | Ваш баланс: #{money} "
					 
				end
	
				if x == 6 && y == 6 && z == 6
					puts ""
					puts "Ваш балан обновлен"
					money = money / 2
					puts "Выпало #{x} #{y} #{z} | Ваш баланс: #{money} "
					
				else
					
					sleep(0.1)
					print "\r [-] Выпало #{x} #{y} #{z} | Ваш баланс: #{money} "
					 
				end
	
				if x == 7 && y == 7 && z == 7
					puts ""
					puts "Ваш балан обновлен"
					money = money + 70
					puts "Выпало #{x} #{y} #{z} | Ваш баланс: #{money} "
					
				else
					
					sleep(0.1)
					print "\r [\\] Выпало #{x} #{y} #{z} | Ваш баланс: #{money} "
					 
				end
	
				if x == 8 && y == 8 && z == 8
					puts ""
					puts "Ваш балан обновлен"
					money = money + 80
					puts "Выпало #{x} #{y} #{z} | Ваш баланс: #{money} "
					
				else
					
					sleep(0.1)
					print "\r [|] Выпало #{x} #{y} #{z} | Ваш баланс: #{money} "
					 
				end
	
				if x == 9 && y == 9 && z == 9
					puts ""
					puts "Ваш балан обновлен"
					money = money + 90
					puts "Выпало #{x} #{y} #{z} | Ваш баланс: #{money} "
					
				else
					 
					sleep(0.1)
					print "\r [-] Выпало #{x} #{y} #{z} | Ваш баланс: #{money} "
					
				end
	
				if x == 1 && y == 2 && z == 3
					puts ""
					puts "Ваш балан обновлен"
					money = money + 123
					puts "Выпало #{x} #{y} #{z} | Ваш баланс: #{money} "
				else
					sleep(0.1)
					print "\r [/] Выпало #{x} #{y} #{z} | Ваш баланс: #{money} "
					
				end
				money = money -1

			end
			puts ""
			puts "Продолжить? Enter"
			puts "Количество попыток? Текущее: #{n}"
			n = gets.strip.to_i

		end

puts ""
puts "Ваш баланс #{money}"

	end

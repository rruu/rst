# Камень ножницы
require 'tty/prompt'

arr = ['камень','ножницы','бумага']
score = 1

while true
	x = rand(0..2)
	z = arr[x]

	prompt = TTY::Prompt.new
	answer = prompt.select("Выберите вариант", arr.shuffle)
	if answer == z
		score += 1
		puts "Поздравляю! Ты выиграл! | Очков: #{score}"
	else
		score -= 1
		puts "Ты проиграл! | Очков: #{score}"
	end

end
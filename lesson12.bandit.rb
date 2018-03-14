#Однорукий бандит с хэшами
score = 100
while score >= 1
    puts "Enter to play"
    gets
    line = rand(100..999).to_s
 
 hh =  {
        '111' => 10,
        '222' => 20,
        '333' => 30,
        '444' => 40,
        '555' => 50,
        '666' => 60,
        '777' => 70,
        '888' => 80,
        '999' => 90,
        '000' => 100
    }

    if hh[line] != nil
        puts "Круто! #{line} Баланс: #{score+=hh[line]}"
    else
        puts "Ohh! #{line} Ваш баланс #{score}"
        score-=1
    end
    
end
puts "Игра закончена"
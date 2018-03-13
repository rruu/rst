while true
    score = 0
    puts '(k)амень (n)ожницы (b)умага'
    print "Выбери букву (en) и нажми Enter: "

    player = gets.strip


arr = [
        
        [:камень,:камень,:ничья],
        [:бумага,:бумага,:ничья],
        [:ножницы,:ножницы,:ничья],

        [:камень,:бумага,:проигрыш],
        [:камень,:ножницы,:победа],

        [:бумага,:ножницы,:проигрыш],
        [:бумага,:камень,:победа],

        [:ножницы,:бумага,:победа],
        [:ножницы,:камень,:проигрыш],        
        
        ]

    comp = arr[rand(1..3)][0]

    if player == "k"
        player = :камень
    elsif player == "n"
        player = :ножницы
    elsif player == "b"
        player = :бумага
    else
        exit
    end

    if player == comp
        puts "Ничья! Вы:#{player} Комп:#{comp}"
    end



    arr.each do |item|
        if item[0] == player && item[1] == comp
            if item[2] == :победа
                puts "Вы победили Вы:#{player} Комп:#{comp}"
                score +=1
            elsif item[2] == :проигрыш
                puts "Вы проиграли Вы:#{player} Комп:#{comp}"
                score -=1
            end
            puts
        end
    end

end

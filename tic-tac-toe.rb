#Tic-tac-toe
# Выводить на экран достку 3x3 с номерами ячеек
# и спрашивать ваш ход по x и по y.

#x1y1 x2y1 x3y1
#x1y2 x2y2 x3y2
#x1y3 x2y3 x3y3

hh = {
    'pl1-0'=>'   ','x1y0'=>'1','pl2-0'=>' ','x2y0'=>'2','pl3-0'=>' ','x3y0'=>'3','pl4-0'=>' ','nl0' => "X\n",
    'pl1-1'=>'1 |','x1y1'=>' ','pl2-1'=>'|','x2y1'=>' ','pl3-1'=>'|','x3y1'=>' ','pl4-1'=>'|','nl1' => " \n",
    'pl1-2'=>'2 |','x1y2'=>' ','pl2-2'=>'|','x2y2'=>' ','pl3-2'=>'|','x3y2'=>' ','pl4-2'=>'|','nl2' => " \n",
    'pl1-3'=>'3 |','x1y3'=>' ','pl2-3'=>'|','x2y3'=>' ','pl3-3'=>'|','x3y3'=>' ','pl4-3'=>'|','nl3' => " \n",
    'pl1-4'=>'Y  ','x1y4'=>' ','pl2-4'=>' ','x2y4'=>' ','pl3-4'=>' ','x3y4'=>' ','pl4-4'=>' ','nl4' => " \n"
}

def print_desk(array)
array.each_value do |x|
print "#{x}"
end
end

print_desk(hh)

def player(array)

    try = 'true'
    while try == 'true'

        print "Введите координату по X: "
        x = gets.strip.to_i
        print "Введите координату по Y: "
        y = gets.strip.to_i
        a = "x#{x}y#{y}"
 
            if array[a] == ' '
                array[a] = 'x'
                try = 'false'
            else
                puts "Ячейка занята, выбери другую"
                try = 'true'
            end

            ca = "x#{rand(1..3)}y#{rand(1..3)}"
            if array[ca] == ' '
                array[ca] = 'o'
                try = 'false'
            else
                try = 'true'
            end

        end

    return

end

step = 1
while step <= 3

    player(hh)
    step+=1
    print_desk(hh)

end

if hh['x1y1'] == 'x' && hh['x2y1'] == 'x' && hh['x3y1'] == 'x'
    puts "WIN!"
elsif hh['x1y1'] == 'x' && hh['x2y2'] == 'x' && hh['x3y3'] == 'x'
    puts "WIN!"
else 
    puts "U Lose!"
end





# Сделать список учеников (добавление, удаление, вывод учеников в классе)
require 'tty/prompt'

def main

array = []

    while true
        prompt = TTY::Prompt.new
        arr = [:Добавить,:Удалить,:Вывести,:Выйти]
        a = prompt.select("Выберите вариант", arr)

        if a == :Добавить
            add_arr(array)

        elsif a == :Вывести
            ls_arr(array)

        elsif a == :Удалить
            rm_arr(array)

        elsif a == :Выйти
            puts "Bye!"
            break
        end  
    end

end

def add_arr(array)

    while true
        print "Введите имя: "
        name = gets.strip
        print "Введите возраст: "
        age = gets.to_i
        if name == '' || age == ''
            puts "Вы не ввели одно из значений"
            break
        elsif name != '' && age != ''
            array_tmp = []
            array_tmp << name
            array_tmp << age
            array << array_tmp
            return    
        end
    end
end

def ls_arr(array)
    array.each_with_index do |val,i|
        puts "№ #{i+1} Имя: #{val[0]} Возраст: #{val[1]}"
    end
end

def rm_arr(array)
    puts "Текущий список: "
    ls_arr(array)

    count = []
    array.each_with_index do |val,i|
        count << "#{i+1} #{val}"
    end

    prompt = TTY::Prompt.new
    a = prompt.select("Выберите вариант", count)
    array.delete_at(a[0].to_i-1)
    puts 
    puts "Список после удаления: "
    ls_arr(array)
    return

end

main


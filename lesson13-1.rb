@hh = {}

def add_item options
    puts "Такое имя уже есть" if @hh[options[:fname]]
   @hh[options[:fname]] = options[:age] if not @hh[options[:fname]]
end

def list_items
    @hh.keys.each do |i|
        puts "Имя: #{i} - Возраст: #{@hh[i]}"
    end
end

loop do
    print "Введите имя: "
    fname = gets.strip
    if fname == ''
        list_items
        exit
    end

    print "Введите возраст: "
    age = gets.strip.to_i
    options = {:fname => fname , :age => age}
    add_item options
end

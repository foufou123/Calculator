def calculator(input_string)
operator_hash = { "plus" => :+, "minus" => :- , "times" => :*,
                  "divided" => :/, "power" => :**, "modulo" => :% }
operator = []

array = input_string.split

            array.each do |element|
              operator << operator_hash[element] if !operator_hash[element].nil?
            end


 array.map! { |element| element.to_f } 
 array.delete_if { |element| element == 0}
 answer = eval("#{array.at(0)} #{operator.at(0)} #{array.at(1)} #{operator.at(1)} #{array.at(2)}")
end


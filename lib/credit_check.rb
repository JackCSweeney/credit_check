card_number = "5541808923795240"

def luhn_algo(number)
    num_array = number.to_i.digits.reverse
    doubled_array = []
    summed_array = []
    num_array.each_index do |index|
        if index.even? == true
            doubled_array << num_array[index] * 2
        else
            doubled_array << num_array[index]
        end
    end
    doubled_array.each do |num|
        if num >= 10
            summed_array << num.digits.sum
        else
            summed_array << num
        end
    end
    total_summed = summed_array.sum
    if total_summed % 10 == 0
        "The number #{number} is valid!"
    else
        "The number #{number} is invalid!"
    end
end

puts luhn_algo("5541808923795240")
puts luhn_algo(5541801923795240) 
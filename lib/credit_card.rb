class CreditCard
    attr_accessor :number, :limit
    def initialize(number, limit)
        @number = number
        @limit = limit
    end

    def card_number
        @number
    end

    def limit
        @limit
    end

    def is_valid?
        num_array = @number.to_i.digits.reverse
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
            p true
        else
            p false
        end
    end

    def last_four
        @number.slice(-4, 4)
    end
end
module ApplicationHelper
    def number_of_option
        data = File.read(Rails.root.join("app/datas/number_of_options.txt"))
    end

    def number_of_list
        data = File.read(Rails.root.join("app/datas/numbers_list.txt")).split
    end

    def lucky_file
        file = Rails.root.join("app/datas/random_lucky.txt")
    end

    def read_data_random
        data = File.read(lucky_file).split
    end
    
    def write_number_of_option(number)
        path = Rails.root.join("app/datas/number_of_options.txt")
        File.write(path, number.to_s) 

        path_number_list = Rails.root.join("app/datas/numbers_list.txt")
        
        numbers = ''
        number.times do |num|
            numbers += (num + 1).to_s + " "
        end

        File.write(path_number_list, numbers) 
    end

    def write_number_of_list(numbers)
        path_number_list = Rails.root.join("app/datas/numbers_list.txt")
        
        list = ''
        numbers.each do |num|
            list += num.to_s + " "
        end

        File.write(path_number_list, list) 
    end

    def write_data_random(number)
        value = number.to_s + " "
        File.write(lucky_file, value, mode: "a")
    end

    def clear_file_data
        File.truncate(lucky_file, 0)
    end

    def audio_path(source, options = {})
        path_to_asset(source, {type: :audio}.merge!(options))
    end

end

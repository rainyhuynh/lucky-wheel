module ApplicationHelper
    def read_data_general
        data = File.read(Rails.root.join("app/datas/number_of_options.txt")).split
        number_of_options = data[0]
        background_music = data[1]

        return number_of_options
    end

    def lucky_file
        file = Rails.root.join("app/datas/random_lucky.txt")
    end

    def read_data_random
        data = File.read(lucky_file).split
    end
    
    def write_number_of_option(number)
        path = Rails.root.join("app/datas/number_of_options.txt")
        File.write(path, number) 
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

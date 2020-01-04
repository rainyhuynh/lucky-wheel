class HomeController < ApplicationController
  include ApplicationHelper

  def index
  end

  def result 
    number_of_options = read_data_general.to_i

    #random number
    random_number = rand(number_of_options)

    lucky_datas = read_data_random

    if lucky_datas.include? random_number || random_number == 0 || random_number < 0
      random_number = rand(number_of_options)
    else
      write_data_random(random_number)
    end

    @random_number = random_number
  end

  def destroys
    clear_file_data
  end
end

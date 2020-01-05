class HomeController < ApplicationController
  include ApplicationHelper

  def index
    @lucked_wheel_datas = read_data_random
    @number_of_options = read_data_general.to_i
  end

  def result 
    number_of_options = read_data_general.to_i

    #random number
    random_number = rand(number_of_options)

    lucky_datas = read_data_random

    while lucky_datas.include? random_number.to_s || random_number == 0 || random_number < 0
      random_number = rand(number_of_options)
    end

    write_data_random(random_number)

    @random_number = random_number
  end

  #delete
  def destroys
    clear_file_data
    redirect_to root_path
  end

  #post
  def update_number_of_option
    number = params["number"].to_i
    write_number_of_option(number)

    #clear all data
    clear_file_data
  end

end

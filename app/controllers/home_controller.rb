class HomeController < ApplicationController
  include ApplicationHelper

  def index
    @lucked_wheel_datas = read_data_random
    @number_of_options = number_of_option.to_i
  end

  def result 
    #number_of_options = read_data_general.to_i

    #random number
    # random_number = rand(number_of_options)

    # lucky_datas = read_data_random

    # while lucky_datas.include? random_number.to_s || random_number == 0 || random_number < 0
    #   random_number = rand(number_of_options)
    # end
    
    numbers = number_of_list

    unless numbers == nil || numbers.length == 0
    
      #random number
      random_number = numbers.sample

      #remove element in number_of_list
      numbers.delete(random_number)
      write_number_of_list(numbers)

      #write random data to new list
      write_data_random(random_number)
    end 

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

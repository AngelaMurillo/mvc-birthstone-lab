require 'bundler'
Bundler.require
require_relative 'models/model.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  post'/find_gem' do 
   user_b_day = params[:birthday]
   @gem = choose_gem(user_b_day)
   erb :results
  end 

  
  
end
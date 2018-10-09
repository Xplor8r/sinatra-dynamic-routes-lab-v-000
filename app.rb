require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @no = params[:number]
    "#{Math.sqrt(@no.to_i).ceil}"
  end

  get '/say/:number/:phrase' do
    string = ""
    @no = params[:number]
    @phr = params[:phrase]
    @no.to_i.times do
      string += @phr
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do

  end

  get '/:operation/:number1/:number2' do

  end
end

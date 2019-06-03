require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/" do
  end

  get "/reversename/:name" do
    @name = params[:name]
    @name = @name.reverse
    erb :reversename
  end

  get "/square/:number" do
    @number = params[:number].to_i
    @square = @number * @number
    erb :square
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @printout = ""
    @number.times do
      @printout << @phrase + " "
    end
    erb :say
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1=params[:word1]
    @word2=params[:word2]
    @word3=params[:word3]
    @word4=params[:word4]
    @word5=params[:word5]
    @printout = ""
    @printout << @word1 + " "
    @printout << @word2 + " "
    @printout << @word3 + " "
    @printout << @word4 + " "
    @printout << @word5 + "."
    erb :say
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @result = 0
    case @operation
      when "add"
        @result = @number1 + @number2
      when "subtract"
        @result = @number1 - @number2
      when "multiply"
        @result = @number1 * @number2
      when "divide"
        @result = @number1 / @number2
      end
    erb :operation
  end

end
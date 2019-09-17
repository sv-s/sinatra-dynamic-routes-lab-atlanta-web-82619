require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do 
    @number = params[:number].to_i
    "#{@number **2}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number].to_i
    x = []
    @number.times { x.push(@phrase) }
    "#{x}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    # binding.pry
    if @operation == "add"
      x = @n1 + @n2
    elsif @operation == "subtract"
      x = @n1 - @n2
    elsif @operation == "multiply"
      x = @n1 * @n2
    elsif @operation == "divide"
      x = @n1 / @n2
    end
    x.to_s
  end


end
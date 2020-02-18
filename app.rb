require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
  	params[:name].reverse
  end

  get "/square/:number" do
  	number = params[:number].to_i
  	number *= number
  	number.to_s
  end

  get "/say/:number/:phrase" do
  	phrase = ''
  	number = params[:number].to_i
  	number.times {phrase += params[:phrase]}
  	phrase
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
  	params[:word1] + ' ' + params[:word2] + ' ' + params[:word3] + ' ' + params[:word4] + ' ' + params[:word5]+ + '.'
  end

  get "/:operation/:number1/:number2" do
  	result = 0 
  	case params[:operation]
  	when 'add'
  		result = (params[:number1].to_i + params[:number2].to_i).to_s
  	when 'subtract'
  		result = (params[:number1].to_i - params[:number2].to_i).to_s
  	when 'multiply'
  		result = (params[:number1].to_i * params[:number2].to_i).to_s
  	when 'divide'
  		result = (params[:number1].to_i / params[:number2].to_i).to_s
  	end
  	return result
  end
end
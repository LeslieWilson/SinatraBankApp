require './models/Bank.rb'


require 'sinatra'
require "pry" if development? || test?
require "sinatra/reloader" if development?


set :bind, '0.0.0.0'

get "/" do
    erb :home
end

get "/checking" do
    erb :checking
end

get "/savings" do
    erb :savings
end

get "/amountTransfer" do
    erb :amountTransfer
end

# you'll need to import your bank model
# you'll need to create a new instance of a bank in the route
# you'll need to call the method that transfers, and pass it the amount submitted in the form
# you'll also need to pass it a string that says the proper account (savings or checking)
post '/amountTransfer' do
    bank = Bank.new
    bank.transfer("checking",params[:amttrans].to_i)

 end

get "/amountWithdraw" do
    erb :amountWithdraw
end

get "/amountDeposit" do
    erb :amountDeposit
end

get "/amountTransferCheck" do
    erb :amountTransferCheck
end

get "/amountDepositSav" do
    erb :amountDepositSav
end

get "/amountWithdrawSav" do
    erb :amountWithdrawSav
end

get "/amountTransferSav" do
    erb :amountTransferSav
end

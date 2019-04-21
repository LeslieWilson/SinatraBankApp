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



# you'll need to import your bank model
# you'll need to create a new instance of a bank in the route
# you'll need to call the method that transfers, and pass it the amount submitted in the form
# you'll also need to pass it a string that says the proper account (savings or checking)


get "/amountWithdraw" do
    erb :amountWithdraw
end
post '/amountWithdraw' do
    bank = Bank.new
    bank.transfer("checking",params[:amount].to_i)



get "/amountDeposit" do
    erb :amountDeposit
end
post '/amountDeposit' do
    bank = Bank.new
    bank.transfer("checking",params[:amount].to_i)
 end



get "/amountTransferCheck" do
    erb :amountTransferCheck
end
post '/amountTransferCheck' do
    bank = Bank.new
    bank.transfer("checking",params[:amount].to_i)
 end



get "/amountDepositSav" do
    erb :amountDepositSav
end
post '/amountDepositSav' do
    bank = Bank.new
    bank.transfer("checking",params[:amount].to_i)
 end



get "/amountWithdrawSav" do
    erb :amountWithdrawSav
end
post '/amountWithdrawSav' do
    bank = Bank.new
    bank.transfer("checking",params[:amount].to_i)
 end



get "/amountTransferSav" do
    erb :amountTransferSav
end
post '/amountTransferSav' do
    bank = Bank.new
    bank.transfer("checking",params[:amount].to_i)
 end

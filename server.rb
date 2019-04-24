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


get "/amountWithdraw" do
    erb :amountWithdraw
end
post '/amountWithdraw' do
    
    bank = Bank.new
    bank.withdraw("checking",params[:amount].to_i)
end


get "/amountDeposit" do
    erb :amountDeposit
end
post '/amountDeposit' do
    bank = Bank.new
    bank.deposit("checking",params[:amount].to_i)
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
    bank.deposit("savings",params[:amount].to_i)
end



get "/amountWithdrawSav" do
    erb :amountWithdrawSav
end
post '/amountWithdrawSav' do
    bank = Bank.new
    bank.withdraw("savings",params[:amount].to_i)
end



get "/amountTransferSav" do
    erb :amountTransferSav
end
post '/amountTransferSav' do
    bank = Bank.new
    bank.transfer("savings",params[:amount].to_i)
 end

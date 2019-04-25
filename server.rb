require './models/Bank.rb'
require 'sinatra'
require "pry" if development? || test?
require "sinatra/reloader" if development?
set :bind, '0.0.0.0'

get "/" do
    bank = Bank.new
    @savings = bank.savings
    @checking = bank.checking
    erb :home
end

get "/checking" do
    bank = Bank.new
    @checking = bank.checking
    erb :checking
end

get "/savings" do
    bank = Bank.new
    @savings = bank.savings
    erb :savings
end
get "/amountWithdraw" do
    bank = Bank.new
    @checking = bank.checking
    erb :amountWithdraw
end

post '/amountWithdraw' do
    bank = Bank.new
    bank.withdraw("checking",params[:amount].to_i)
end


get "/amountDeposit" do
    bank = Bank.new
    @checking = bank.checking
    erb :amountDeposit
end
post '/amountDeposit' do
    bank = Bank.new
    bank.deposit("checking",params[:amount].to_i)
 end
get "/amountTransferCheck" do
    bank = Bank.new
    @checking = bank.checking
    erb :amountTransferCheck
end
post '/amountTransferCheck' do
    bank = Bank.new
    bank.transfer("checking",params[:amount].to_i)
end
get "/amountDepositSav" do
    bank = Bank.new
    @savings = bank.savings
    erb :amountDepositSav
end
post '/amountDepositSav' do
    bank = Bank.new
    bank.deposit("savings",params[:amount].to_i)
end
get "/amountWithdrawSav" do
    bank = Bank.new
    @savings = bank.savings
    erb :amountWithdrawSav
end
post '/amountWithdrawSav' do
    bank = Bank.new
    bank.withdraw("savings",params[:amount].to_i)
end
get "/amountTransferSav" do
    bank = Bank.new
    @savings = bank.savings
    erb :amountTransferSav
end
post '/amountTransferSav' do
    bank = Bank.new
    bank.transfer("savings",params[:amount].to_i)
 end

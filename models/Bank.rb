require'pry'



class Bank
    attr_accessor :checking, :savings
    def initialize
        @checking = File.open("checking.txt").read.to_i
        @savings = File.open("savings.txt").read.to_i
    end

    def withdraw(input,amount)
        if input == "savings"
            @savings -= amount
            File.open("savings.txt", 'w') { |file| file.write(@savings) }
        elsif input == "checking"
            @checking -= amount
            File.open("checking.txt", 'w') { |file| file.write(@checking) }
        end

    end

    def deposit(input,amount)
        if input == "savings"
            @savings += amount
            File.open("savings.txt", 'w'){|file| file.write(@savings)}
        elsif input == "checking"
            @checking += amount
            File.open("checking.txt", 'w') { |file| file.write(@checking)}
    end
end
    def transfer(account, amount)
        if account == "savings"
            @savings -= amount
            File.open("savings.txt", 'w'){|file| file.write(@savings)}
            @checking += amount
            File.open("checking.txt", 'w'){|file| file.write(@checking)}


        elsif account == "checking"
            @checking -= amount
            File.open("checking.txt", 'w'){|file| file.write(@checking)}
            @savings += amount
            File.open("savings.txt", 'w'){|file| file.write(@checking)}
        end
end
end

bank = Bank.new

puts "which account do you want to use? say checking,savings"
account = gets.chomp
puts "ok, what do you want to do? choose transfer, deposit, withdraw"
action = gets.chomp
puts "how much money would you like to move? give an integer "
amount = gets.chomp.to_i
if action == "transfer" && account == "savings"
        bank.transfer(account,amount)
        puts "your savings balance is #{bank.savings} and your checking balance is #{bank.checking}"
    elsif
        action == "transfer" && account == "checking"
        bank.transfer(account,amount)
        puts "your checking balance is #{bank.checking} and your savings balance is #{bank.savings}"
end
if account == "savings" && action == "deposit"
    bank.deposit(account,amount)
    puts "your balance is #{bank.savings}"
elsif account == "savings" && action == "withdraw"
    bank.withdraw(account,amount)
    puts "your balance is #{bank.savings}"
elsif account == "checking" && action == "withdraw"
    bank.withdraw(account,amount)
    puts "your balance is #{bank.checking}"
elsif account == "checking" && action == "deposit"
    bank.deposit(account,amount)
    puts "your balance is #{bank.checking}"

end

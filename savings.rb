require_relative 'account'


  class Savings < Account
    attr_reader :emergency_fund, :three_months

    def initialize (balance = 0, emergency = 0, three_months = 0)
      @balance = balance
      @emergency = emergency
      @three_months = three_months
    end

    def budget(amount)
      @emergency_fund += amount * 0.5
      @three_months += amount * 0.5
    end

    def emergency(amount)
      @emergency -= amount
    end

    def three_months
      @three_months -= amount
    end

    def withdrawal
    @balance -= purchase
     
       puts "which bill are you paying? 
       Choose from: 'emergency fund' or 'three month expenses'"
       answer = gets.chomp.downcase

      
       case answer 
        when "emergency fund"
          emergency(purchase)
        when "three month expenses"
          three_months(purchase)
        else puts "Please choose one of the options above"
       end
      puts totals
    end
  

    def totals
      puts "Your totals are:
     Your balance is $#{@balance}
     Your emergency fund is #{@emergency}
     Your three to six month fund is #{three_months}."
    end
  end

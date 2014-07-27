# budget need to divide accounts into sections
# I want a pre-setting that divides account into dave ramsey percentages
# then another setting that the account can be set how you want it. 

class Budget
  attr_accessor :monthly
  def initialize(monthly)
    @monthly = monthly
  end

  def housing
   payment = @monthly * .25
     if housing > payment
      puts "overbudget"
    else puts "Good Job!"
    end
  end

  def vehicle
    payment = @monthly * .1
    if vehicle > payment
       puts "overbudget"
    else puts "Good Job!"
    end
  end

  def expenses
    hash = {housing => 700, }
  end
  def budget
    hash = {housing => 725, }



  end
  # could be a better way to do this is to put all of these into a hash in a struct
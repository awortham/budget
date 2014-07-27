require_relative 'account'
require_relative 'envelope_collection'
require_relative 'envelope'

checking = Account.new
checking.create_envelope('mortgage')
checking.create_envelope('groceries')
checking.create_envelope('car payment')
checking.create_envelope('utilities')
checking.create_envelope('miscellaneous')

checking.envelopes.calculate_percentages
checking.envelopes.change_percentage('mortgage', 0.25)
checking.envelopes.change_percentage('groceries', 0.1)
checking.envelopes.change_percentage('car payment', 0.2)
checking.envelopes.change_percentage('utilities', 0.15)
checking.envelopes.change_percentage('miscellaneous', 0.15)


#puts checking.envelopes.envelope_percentages
checking.deposit(1000)
puts checking.envelopes
checking.withdrawal(250, 'mortgage')




#  loop do 
#   puts "Would you like to make a deposit or a withdrawal? Or type quit to exit"
#   puts "Type `envelope: $name` to create a new envelope"
#   answer = gets.chomp.downcase
#    case answer
#    when "deposit"
#    puts "How much would you like to deposit?"
#    amount = gets.chomp.to_i
#    checking.deposit(amount)
#    when "withdrawal"
#    puts "How much would you like to withdraw?"
#    purchase = gets.chomp.to_i
#    checking.withdrawal(purchase)
#  when /envelope/
#     label = gets.chomp.match(/create envelope (<?label>\w+)/)[:label]
#     checking.create_envelope(label)
#  when 'quit', 'exit'
#   puts "Good Job Budgeting!"
#   break
# else 
#   puts "Please pick deposit, withdrawal or quit"
# end
# end


# def conditions
#   if checking
#     budget_checking
#   else budget_savings
# end
 
   


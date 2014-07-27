require_relative 'envelope'
require_relative 'envelope_collection'

class Account
  attr_accessor :balance, :envelopes

  def initialize(balance=0)
    @balance = balance
    @envelopes = EnvelopeCollection.new
  end

  def create_envelope(label)
    @envelopes << Envelope.new(label)
    # .push is the same as <<
  end

  def withdrawal(purchase, name)
     @balance -= purchase
     #@envelopes.envelope_percentages[name] -= purchase
     envelope = @envelopes.select {|e| e.label == name}.pop
     envelope.amount -= purchase
     
    puts totals
  end

  def deposit(amount)
    @balance += amount
    budget(amount)
    puts "Your balance is $#{@balance}."
    puts totals
  end

  def budget(amount)
    @envelopes.each do |envelope|
      envelope.amount += amount * @envelopes.envelope_percentages[envelope.label]
    end
  end

  def totals
    @envelopes.each do |envelope|
      puts "Your #{envelope.label} has a balance of #{envelope.amount}."
    end
  end
end


require_relative 'account'

class Envelope
  attr_reader :label
  attr_accessor :amount
  def initialize(label, amount=0)
    @label, @amount, = label, amount 
  end
end

class NotEnvelope
  def initialize
    @label = 'word'
  end
end

@label

Envelope.new('white envelope')
Envelope.new('tan envelope')
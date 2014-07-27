require_relative 'account'


class EnvelopeCollection < Array
  
  def envelope_percentages
    @envelope_percentages ||= {}

    # if @envelope_percentages # if it has a value
    #   @envelope_percentages
    # else
    #   @envelope_percentages = {}
    # end
  end

  def calculate_percentages
    each do |envelope|
      envelope_percentages[envelope.label] ||= 0.0
    end
  end

  def change_percentage(label, percentage)
    envelope_percentages[label] = percentage
  end
end

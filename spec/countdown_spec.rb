require 'countdown'

describe Countdown do
  it 'takes in a date for counting down' do
    subject = Countdown.new("1", "1")
    expect(subject).to be_a Countdown
  end
end

require 'countdown'

describe Countdown do
  it 'takes in a date for counting down' do
    subject = Countdown.new("1", "1")
    expect(subject).to be_a Countdown
  end

  describe '#calculate days' do
    it 'counts how many days are left until the next birthday' do
      subject = Countdown.new("28", "02")
      expect(subject.days_left).to eq 9
    end
  end
end

require 'birthday'

describe Birthday do
  it 'creates a new instance by initializing a day, month and year' do
    subject = Birthday.new('23', 'December', '1988')
    expect(subject).to be_a Birthday
  end

  describe '#is_today?' do
    it 'if birthday is today it returns true' do
      day = Date.today.strftime('%d')
      month = Date.today.strftime('%m')
      year = Date.today.strftime('Y')
      subject = Birthday.new(day.to_s, month.to_s, year.to_s)
      expect(subject.is_today?).to eq true
    end

    it 'returns false if birthday is not today' do
      day = Date.today.strftime('%d').to_i + 1
      day = 1 if day > 30
      subject = Birthday.new(day.to_s, 'December', '1988')
      expect(subject.is_today?).to eq false
    end
  end
end

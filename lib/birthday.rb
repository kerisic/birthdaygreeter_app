require 'Date'

class Birthday
  def initialize(day, month, year)
    @day = day
    @month = month
    @year = year
  end

  def is_today?
    convert == Date.today.strftime('%d %m')
  end

  private

  def convert
    Date.parse("#{@day} #{@month}").strftime('%d %m')
  end
end

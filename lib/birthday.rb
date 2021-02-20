require 'date'
require_relative 'countdown'

class Birthday
  def initialize(day, month, year)
    @day = day
    @month = month
    @year = year
  end

  def is_today?
    convert == Date.today.strftime('%d %m')
  end

  def convert
    Date.parse("#{@day} #{@month}").strftime('%d %m')
  end

  def days_left
    (Countdown.new(@day, @month)).days_left
  end
end

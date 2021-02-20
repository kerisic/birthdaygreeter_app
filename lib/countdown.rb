require 'date'

class Countdown
  def initialize(day, month)
    @day = day
    @month = month
  end

  def days_left
    if Date.parse("#{@day} #{@month} #{Date.today.year}") > Date.today
      (Date.parse("#{@day} #{@month}")).mjd - (Date.today).mjd
    else
      nextyear = (Date.today.strftime('%Y')).to_i + 1
      (Date.parse("#{@day} #{@month} #{nextyear}")).mjd - (Date.today).mjd
    end
  end
end

require 'date'

class Birthday
  DATE_FORMAT = '%d-%m-%Y'

  attr_accessor :birthday_date

  def initialize(birthday_date)
    @birthday_date = birthday_date
  end

  def count
    bday = Date.parse(birthday_date)
    this_year = Date.new(Date.today.year, bday.month, bday.day)
    if this_year > Date.today 
      (this_year - Date.today).to_i
    else
      (Date.new(Date.today.year + 1, bday.month, bday.day) - Date.today).to_i
    end
  end

end
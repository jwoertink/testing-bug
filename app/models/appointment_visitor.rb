class AppointmentVisitor < ActiveRecord::Base

  belongs_to :appointment

  def name
    [firstname, lastname].join(' ')
  end
end

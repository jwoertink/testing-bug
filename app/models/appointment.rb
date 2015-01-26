class Appointment < ActiveRecord::Base

  has_one :appointment_visitor
  belongs_to :directory

  accepts_nested_attributes_for :appointment_visitor

  def self.check_in(visitor, params)
    directory = Directory.by_name('Lobby')
    appointment = visitor.appointment
    appointment_params = {directory_id: directory.id, appointment_visitor_attributes: params.merge(checked_in_at: Time.current, appointment_id: appointment.id)}
    appointment.update_attributes(appointment_params) ? appointment : nil
  end

end

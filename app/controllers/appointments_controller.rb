class AppointmentsController < ApplicationController
  before_action :find_appointment, except: :index

  def index
    @visitor = AppointmentVisitor.first
  end

  def edit
  end

  # NOTE: This method doesn't look conventional on purpose.
  # The app these bits are taken from has some crazy stuff in it.
  def update
    if @appointment = Appointment.check_in(@visitor, appointment_params)
      redirect_to root_path, notice: 'Checked-in'
    else
      redirect_to root_path, alert: 'Failed check-in'
    end
  end

  private

  def find_appointment
    @visitor = AppointmentVisitor.find(params[:id])
  end

  def appointment_params
    params.require(:appointment_visitor).permit(:appointment_id, :firstname, :lastname, :phone, :email)
  end
end

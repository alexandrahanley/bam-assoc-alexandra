class AppointmentsController < ApplicationController

  def index
    @doctors = Doctor.all
    @doctor = Doctor.new
    @users = User.all
    @user = User.new
    @appointment = Appointment.new
    @appointments = Appointment.all
  end

  def create
    @appointment = Appointment.new(appointment_params)

    # @doctor = Doctor.find(params[:doctor_id])
    # @user = User.find(params[:user_id])
    #
    # @appointment.doctor_id = @doctor.id
    # @appointment.user_id = @user.id
      if @appointment.save
      redirect_to appointments_path
      else
        render :new
      end
    end

private

  def appointment_params
    params.require(:appointment).permit(:doctor_id, :user_id, :date)
  end

end

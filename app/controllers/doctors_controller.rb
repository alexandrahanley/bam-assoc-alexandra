class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
    @doctor = Doctor.new
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to doctors_path
    end
  end

  private
   def doctor_params
     params.require(:doctor).permit(:name)
   end
end

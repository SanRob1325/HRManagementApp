class AttendancesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_employee

  def index
    @attendances = @employee.attendances.order(date: :desc)
  end

  def new
    @attendance = @employee.attendances.build
  end

  def create
    @attendance = @employee.attendances.build(attendance_params)
    if @attendance.save
      redirect_to employee_attendances_path(@employee), notice: "Attendance successfully recorded!"
    else
      render :new
    end
  end

  private

  def set_employee
    @employee = current_user
  end

  def attendance_params
    params.require(:attendance).permit(:date, :status, :notes)
  end
end

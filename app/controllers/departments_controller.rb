class DepartmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_department, only: [:show, :edit, :update, :destroy]

  def index
    @departments = Department.all
  end

  def new
    @department = Department.new
  end

  def show
    @department = Department.find(params[:id])
  end

  def update
    if @department.update(department_params)
      redirect_to departments_path, notice: 'Department was successfully updated.'
    end
  end

  def edit

  end

  def destroy
    @department = Department.find(params[:id])
    if @department.destroy
      flash[:notice] = "Department was successfully deleted"
      redirect_to departments_path
    else
      flash[:alert] = "Department was successfully deleted"
    end
    redirect_to departments_path
  end

  def create
    @department = Department.new(department_params)
    if @department.save
      redirect_to departments_path, notice: 'Department was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_department
    @department = Department.find(params[:id])
  end

  def department_params
    params.require(:department).permit(:name, :description)
  end
end

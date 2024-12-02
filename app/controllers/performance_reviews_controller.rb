class PerformanceReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_employee, only: [:new, :create]

  def index
    @performance_reviews = PerformanceReview.all
  end

  def new
    @review = PerformanceReview.new
  end

  def create
    @review = @employee.performance_reviews.build(review_params)
    @review.reviewer = current_user
    if @review.save
      redirect_to performance_reviews_path, notice: 'Performance Review was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_employee
    @employee = Employee.find(params[:employee_id])
  end

  def review_params
    params.require(:performance_review).permit(:comments, :rating)
  end
end

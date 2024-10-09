class ResumesController < ApplicationController
  before_action :authenticate_user!

  def new
    @resume = Resume.new
  end

  def create
    @resume = current_user.resumes.build(resume_params)
    if @resume.save
      render json: { message: 'Resume created successfully.' }, status: :created
    else
      render json: { errors: @resume.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @resume.update(resume_params)
      render json: { message: 'Resume updated successfully.' }, status: :ok
    else
      render json: { errors: @resume.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    render json: @resume
  end

  private

  def resume_params
    params.require(:resume).permit(:name, :skills, :experience, :education, :template_id, :picture)
  end
end

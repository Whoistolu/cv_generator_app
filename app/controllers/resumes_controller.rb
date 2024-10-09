class ResumesController < ApplicationController
  before_action :authenticate_user!

  def new
    @resume = Resume.new
  end

  def create
    @resume = current_user.resumes.build(resume_params)
    if @resume.save
      render json: { message: 'Resume created successfully.' }
    else
      render :new
    end
  end

  def show
    @resume = Resume.find(params[:id])
  end

  private

  def resume_params
    params.require(:resume).permit(:name, :skills, :experience, :education, :template_id, :picture)
  end
end

class ResumesController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def create
  end

  def show
  end

  private

  def resume_params
    params.require(:resume).permit(:name, :skills, :experience, :education, :template_id, :picture)
  end
end

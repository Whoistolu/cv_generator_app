class Admin::TemplatesController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_only

  def new
    @template = Template.new
  end

  private

  def template_params
    params.require(:template).permit(:name, :description, :design_code)
  end

  def destroy
    @template = Template.find(params[:id])
    @template.destroy
    render json: { message: 'Template deleted successfully.' }
  end

  def admin_only
    render json: { message: 'Not authorized' } unless current_user.admin?
  end

end

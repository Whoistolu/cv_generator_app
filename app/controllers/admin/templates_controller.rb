class Admin::TemplatesController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_only

  def new
    @template = Template.new
  end

end

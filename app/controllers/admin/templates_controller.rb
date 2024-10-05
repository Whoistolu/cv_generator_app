class Admin::TemplatesController < ApplicationController

  def new
    @template = Template.new
  end
  
end

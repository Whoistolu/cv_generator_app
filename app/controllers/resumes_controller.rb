class ResumesController < ApplicationController
  def new
  end

  def create
  end

  def show
    @resume = Resume.find(params[:id])
    
    respond_to do |format|
      format.html
      format.pdf do
        pdf = ResumePdf.new(@resume)
        send_data pdf.render, filename: "resume.pdf", type: "application/pdf", disposition: "inline"
      end
    end
  end
end

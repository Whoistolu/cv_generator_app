class ApplicationController < ActionController::API
  rescue_from CanCan::AccessDenied do |exception|
    render json: { message: 'You are not authorized to perform this action.' }
  end
end

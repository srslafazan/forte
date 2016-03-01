class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def require_login
      redirect_to '/' if session[:email] == nil
  end
  def require_admin
      @admin = Admin.find_by user_id:session[:id]
      redirect_to '/' if @admin.nil?
  end
  #before_action :require_login, except: [:new, :create] use for students and teachers controller


  protect_from_forgery with: :exception
end

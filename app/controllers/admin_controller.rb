class AdminController < ApplicationController
    before_action :require_admin, except: [:index, :login]
  def index
    # log in to admin portal
  end

  def login
    @admin = Admin.find_by user_id: params[:user_id]
    if @admin && @admin.authenticate(params[:password])
        session[:id] = @admin.user_id
        redirect_to '/admin_dashboard'
    elsif params[:user_id] == ""
        redirect_to '/admin'
    elsif @admin.nil?
        flash[:error] = "That admin ID doesn't exist"
        redirect_to '/admin'
    else
        flash[:error] = "Admin ID / Password don't match"
        redirect_to '/admin'
    end
  end

  def dashboard
    @students = Student.all
  end

  def view_student
  end

  def view_tutor
  end
end

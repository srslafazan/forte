class SessionsController < ApplicationController
  # mount_uploader :avatar, AvatarUploader
  # before_action :require_login, except: [:index, :about, :contact, :involve]

  # For page organization information, refer to the Forte Web Structure and Components guide on Slack.

  def create
    # redirect_to '/students#index'
    redirect_to '/students/show'
  end

  def index # Home
  end
  def about # About Us
  end
  def contact # Contact Us
  end
  def involve # Get Involved
  end
  def payments # Payments
  end
  def support # Support
  end
  def privacy
  end
  def terms
  end
  def carrierwave
    @student = Student.new
  end

  def carrierwave_create
    @student = Student.create(student_params)
    puts @student.inspect
    puts @student.errors
    puts @student.errors.full_messages
    render 'carrierwave_success'
  end

  # Temporary Pages

  def components # style buttons, links, typography, and other components on this page
  end

  def sitemap
  end
  def student_params
    params.require(:student).permit(:avatar)
  end
end

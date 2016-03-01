class SessionsController < ApplicationController
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


  # Temporary Pages

  def components # style buttons, links, typography, and other components on this page
  end

  def sitemap
  end

end

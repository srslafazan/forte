class StudentsController < ApplicationController
    # before_action :require_login, except: [:login, :create] # add to exceptions when needed

    def index
    end

    def new
    end

    def create
        # Student.basic_signup(student_basic_params)
        # add function to Student model
        # session[:email] = params[:email] -> set in Model or controller?
        # set session[:email] with unique email address
        # @message_info = params[:student]
        @student = Student.new(student_params)
        puts "alpha"
        puts @student.first_name
        puts "beta"
        error = false
        if error
            redirect_to 'students/new'
        else
            # @message_info = params
            # @message_info[:first_name] = "Student Kelly"
            # @message_info[:email] = "kellybhoward@gmail.com"
            # @message_info[:role] = "learning"
            # @message_info[:time_frame] = "72 hours"
            # Messenger.application_received(@message_info).deliver
            redirect_to '/students/1'
        end

    end

    def update
        Student.update_account(student_params)
        if errors
            # send back to profile page with error message
        else
            # update page
        end
    end

    def login
        Student.login_credentials(params[:email], params[:password])
        if errors
            #go back to login modal
        else
            #go to dashboard
        end

    end

    def destroy
        Student.find(params[:id]).destroy
        # set session[:email] = nil (deleting own account)
        # redirect_to '/'
    end

    def show # profile.html.erb
    end

    def edit # edit_profile.html.erb
    end

    def dashboard
    end


    private
    def student_params
        params.require(:student).permit("first_name", "last_name", "email", "password", "password_confirmation", "phone_number")
    end
end

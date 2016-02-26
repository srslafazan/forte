class StudentsController < ApplicationController
    # before_action :require_login, except: [:login, :create] # add to exceptions when needed

    def index
    end

    def new
    end

    def create
        @student = Student.new(student_params)

        if @student.valid?
            redirect_to 'students/new'
            puts "Epic"
        else
            redirect_to '/students/new'
            puts "Epic Fail"
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
        params.require(:student).permit(:first_name, :last_name, :email, :password, :password_confirmation, :phone_number)
    end
end

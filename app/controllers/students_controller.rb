class StudentsController < ApplicationController
    # before_action :require_login, except: [:login, :create] # add to exceptions when needed

    def index
    end

    def new
    end

    def create
        @student = Student.new(student_params)

        if @student.save
            redirect_to '/students/show'
        else
            puts @student.errors.full_messages
            redirect_to '/students/new'
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

    def show
    end

    def edit
    end

    def dashboard
    end


    private
    def student_params
        params.require(:student).permit(:first_name, :last_name, :email, :password, :password_confirmation, :phone_number, :birthdate)
    end
end

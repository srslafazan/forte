class StudentsController < ApplicationController
    before_action :require_login, except: [:login, :create] # add to exceptions when needed

    def create
        Student.basic_signup(student_basic_params)
        # add function to Student model
        # session[:email] = params[:email] -> set in Model or controller?
        # set session[:email] with unique email address
        # redirect_to 'finish profile'
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

    private
        def student_basic_params
            params.require(:student).permit("email", "first_name", "last_name")
        end
        def student_params
            #add the rest of potential updating attributes
            params.require(:student).permit("email", "first_name", "last_name")
        end
end

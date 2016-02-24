class TutorsController < ApplicationController
    # before_action :require_login, except: [:login, :create] #add to exceptions when needed

    def create
        # Tutor.basic_signup(tutor_basic_params)
        # add function to Tutor model
        # session[:email] = params[:email] -> set in Model or controller?
        # set session[:email] with unique email address
        # redirect_to 'finish profile'
        error = false
        if error
            redirect_to '/tutors/new'
        else
            @message_info = params
            @message_info[:first_name] = "Teacher Kelly"
            @message_info[:email] = "kellybhoward@gmail.com"
            @message_info[:role] = "teaching"
            @message_info[:time_frame] = "week"
            Messenger.application_received(@message_info).deliver
            redirect_to '/tutors/1'
        end
    end

    def update
        Tutor.update_account(tutor_params)
        if errors
            # send back to profile page with error message
        else
            # update page
        end
    end

    def login
        Tutor.login_credentials(params[:email], params[:password])
        if errors
            #go back to login modal
        else
            #go to dashboard
        end

    end

    def destroy
        Tutor.find(params[:id]).destroy
        # redirect_to '/'
    end

    def show
    end

    def dashboard
    end


    private
        def tutor_basic_params
            params.require(:tutor).permit("email", "first_name", "last_name")
        end
        def tutor_params
            #add the rest of potential updating attributes
            params.require(:tutor).permit("email", "first_name", "last_name")
        end
end

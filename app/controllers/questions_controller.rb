class QuestionsController < ApplicationController

    def create
        question_params
        Questions.create(subject:params[:subject], message:params[:message], sender_email:session[:email])
        # probably hook up a mailer here
    end

    def show # contact.html.erb
    end

    private
	    def question_params
	        params.require(:question).permit("subject", "message")
	    end
end

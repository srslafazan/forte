class EvaluationsController < ApplicationController
    before_action :require_login, except: [] #add to exceptions when needed

    def create
        Evaluation.create(evaluation_params)
        # redirect_to 'feedback page or dashboard (from modal)'
    end
    
    private
        def evaluation_params
            params.require(:evaluation).permit("teacher_id", "rating", "message", "student_id")
        end
end

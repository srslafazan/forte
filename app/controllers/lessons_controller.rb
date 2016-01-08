class LessonsController < ApplicationController
    before_action :require_login, except: [] #add to exceptions when needed

    def create
        Lesson.create(lesson_params)
        # redirect_to
    end

    def update
        Lesson.update(update_params)
        # redirect_to
    end

    def destroy
        Lesson.find(params[:id]).destroy
        # redirect_to 'dashboard'
    end

    private
        def lesson_params
        end
        def update_params
        end
end

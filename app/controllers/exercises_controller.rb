class ExercisesController < ApplicationController
    before_action :set_exercise, only: [:show, :edit, :update, :destroy]

    def index
        @exercises = Exercise.all 
        render :index
    end

    def show
        render :show 
    end

    def new
        @exercise = Exercise.new 
        render :new 
    end

    def create
        exercise = Exercise.create(exercise_params)
        if exercise.valid?
            redirect_to exercise_path(exercise)
        else
            flash[:errors] = exercise.errors.full_messages
            redirect_to new_exercise_path
        end
    end

    def edit
        render :edit 
    end

    def update
        if @exercise.update(exercise_params)
            redirect_to exercise_path(@exercise)
        else
            flash[:errors] = @exercise.errors.full_messages
            redirect_to edit_exercise_path
        end
    end

    def destroy
        @exercise.destroy 
        redirect_to exercises_path
    end

    private

    def exercise_params
        params.require(:exercise).permit(:name, :description, :video)
    end

    def set_exercise
        @exercise = Exercise.find(params[:id])
    end
end
class WorkoutsController < ApplicationController
    before_action :set_workout, only: [:show, :edit, :update, :destroy]

    def index
        @workouts = Workout.all 
        render :index
    end

    def show
        render :show 
    end

    def new
        @workout = Workout.new 
        @users = User.all
        5.times do 
            @workout.exercises.build
        end
        render :new 
    end

    def create
        workout = Workout.create(workout_params)
        if workout.valid?
            redirect_to workout_path(workout)
        else
            flash[:errors] = workout.errors.full_messages
            redirect_to new_workout_path
        end
    end

    def edit
        @users = User.all
        render :edit 
    end

    def update
        if @workout.update(workout_params)
            redirect_to workout_path(@workout)
        else
            flash[:errors] = @workout.errors.full_messages
            redirect_to edit_workout_path
        end
    end

    def destroy
        @workout.destroy 
        redirect_to workouts_path
    end

    private

    def workout_params
        params.require(:workout).permit(:date, :time, :type, exercises_attributes: [])
    end

    def set_workout
        @workout = Workout.find(params[:id])
    end
end
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
        5.times do 
            @workout.exercise_workouts.build 
        end
        if params[:legs]
            @exercises = Exercise.where(category: "Legs")
        elsif params[:arms]
            @exercises = Exercise.where(category: "Arms/Shoulders")
        elsif params[:olympic]
            @exercises = Exercise.where(category: "Olympic Weightlifting")
        elsif params[:chest]
            @exercises = Exercise.where(category: "Chest")
        elsif params[:back]
            @exercises = Exercise.where(category: "Back")
        elsif params[:all]
            @exercises = Exercise.all
        else 
            @exercises = Exercise.all  
        end
        render :new 
    end

    def create
        byebug
        workout = Workout.create(workout_params)
        if workout.valid?
            redirect_to workout_path(workout)
        else
            flash[:errors] = workout.errors.full_messages
            redirect_to new_workout_path
        end
    end

    def edit
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
        params.require(:workout).permit(:date, :time, :kind, :user_id, exercise_workouts_attributes: [:sets, :reps, :exercise_id, :workout_id, :_destroy])
    end

    def set_workout
        @workout = Workout.find(params[:id])
    end
end
# class ExerciseWorkoutsController < ApplicationController
#     before_action :set_join, only: [:show, :edit, :update, :destroy]

#     def index
#         @joins = Join.all 
#         render :index
#     end

#     def show
#         render :show 
#     end

#     def new
#         @join = Join.new 
#         render :new 
#     end

#     def create
#         join = Join.create(join_params)
#         if join.valid?
#             redirect_to workout_path(join.workout)
#         else
#             flash[:errors] = join.errors.full_messages
#             redirect_to new_workout_path
#         end
#     end

#     def edit
#         render :edit 
#     end

#     def update
#         if @join.update(join_params)
#             redirect_to workout_path(@join.workout)
#         else
#             flash[:errors] = @join.errors.full_messages
#             redirect_to edit_workout_path
#         end
#     end

#     def destroy
#         @join.destroy 
#         redirect_to joins_path
#     end

#     private

#     def workout_params
#         params.require(:join).permit(:workout_id, :exercise_id, :sets, :reps)
#     end

#     def set_join
#         @join = Join.find(params[:id])
#     end
# end
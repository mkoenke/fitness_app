class StatsController < ApplicationController
    def index
        @stats = Stat.all
    end

    def show
        
        @stat = Stat.find(params[:id])
    end
    
    def new
        @stat = Stat.new
    end

    def create
        @stat = Stat.create(stat_params)
        if @stat.valid?
          redirect_to stat_path(@stat)
        else
          flash[:stat_errors] = @stat.errors.full_messages
          redirect_to new_stat_path
        end
    end

    def edit
        @stat = Stat.find(params[:id])
        @stat.video.attach(params[:video])
    end
    
    def update
        @stat = Stat.find(params[:id])
        if @stat.update(stat_params)
          redirect_to stat_path(@stat)
        else
          flash[:stat_errors] = @stat.errors.full_messages
          redirect_to edit_stat_path
        end
    end

    def destroy
        @stat = Stat.find(params[:id])
        @stat.destroy
        redirect_to stats_path
    end

    private

    def stat_params
        params.require(:stat).permit(:user_id, :exercise_id, :weight, :time, :comment, :video)
    end
end

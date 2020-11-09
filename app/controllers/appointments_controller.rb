class AppointmentsController < ApplicationController
    def index
        @appointments = Appointment.all
    end

    def show
        @appointment = Appointment.find(params[:id])
    end
    
    def new
        @appointment = Appointment.new
    end

    def create
        @appointment = Appointment.create(appointment_params)
        if @appointment.valid?
          redirect_to appointment_path(@appointment)
        else
          flash[:appointment_errors] = @appointment.errors.full_messages
          redirect to new_appointment_path
        end
    end

    def edit
        @appointment = Appointment.find(params[:id])
    end
    
    def update
        @appointment = Appointment.find(params[:id])
        if @appointment.update(appointment_params)
          redirect_to appointment_path(@appointment)
        else
          flash[:appointment_errors] = @appointment.errors.full_messages
          redirect_to edit_appointment_path
        end
    end

    def destroy
        @appointment = Appointment.find(params[:id])
        @appointment.destroy
        redirect_to appointments_path
    end

    private

    def appointment_params
        params.require(:appointment).permit(:user_id, :workout_id, :date, :time, :location)
    end
end

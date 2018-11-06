class DoctorsController < ApplicationController
    before_action :define_current_doctor

    def index 
        @doctors = Doctor.all
    end 

    def show

    end 

    def define_current_doctor
        if params[:id]	
            @doctor = Doctor.find(params[:id])
        else
            @doctor = Doctor.new
        end
    end 
end

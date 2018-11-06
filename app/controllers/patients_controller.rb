class PatientsController < ApplicationController
    before_action :define_current_patient
    def show 

    end

    def index
        @patients = Patient.all
    end 

    def define_current_patient
        if params[:id]	
            @patient = Patient.find(params[:id])
        else
            @patient = Patient.new
        end
    end 
end

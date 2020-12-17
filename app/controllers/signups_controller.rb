class SignupsController < ApplicationController

    def index
        @signup = Signup.all
    end 

    def new 
        @signup = Signup.new
    end 

    def create 
        @signup = Signup.create(signup_params)

        redirect_to camper_path(@signup.camper)
    end 

    private

    def signup_params 
       params.required(:signup).permit(:camper_id, :activity_id, :time)
    end 
end

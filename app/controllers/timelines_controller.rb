class TimelinesController < ApplicationController

    def index
        @timelines = Timeline.all
        render json: @timelines.to_json(
            :include => [:person => { :except => [ :created_at, :updated_at, :city_id]}, :user => { :except => [:firebase_id, :created_at, :updated_at, :id]}],
           
        )
    end

    def show
        @timeline = Timeline.find(params[:id])
        render json: @timeline.to_json(
            :include => [:person , :events, :user]
        )
    end

    def create
        byebug
        
        # required immediately... title, person, user
        #     title:string
        #     person =>   name: string  
        #                 birthday: date
        #                 deathday: date (optional)
        #                 city => name: string, state: string(optional), country: string
            
        #     user => username: string
        #             firebase_id: string

        # required but no rush ... picture:URL,
        
        # autosets.... status = "in progress"
        
   


      
        
    end


end

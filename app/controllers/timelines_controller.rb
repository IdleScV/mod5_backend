class TimelinesController < ApplicationController

    def index
        @timelines = Timeline.where(status: "done")
        render json: @timelines.to_json(
            :include => [:person => { :except => [ :created_at, :updated_at, :region_id]}, :user => { :except => [:firebase_id, :created_at, :updated_at, :id]}],
           
        )
    end

    def privateIndex

        user = User.find_by(firebase_id: params[:id])

        if user
            @timelines = Timeline.where(user: user)
            
            render json: @timelines.to_json(
                :include => [:person => { :except => [ :created_at, :updated_at, :region_id], :include => [:city => {:include => [:country]}]}, :user => { :except => [:firebase_id, :created_at, :updated_at, :id]}],
               
            )

        else
            render json: {message: "No Timelines Exist"}

        end
       
    end

   


    def show
        @timeline = Timeline.find(params[:id])
        render json: @timeline.to_json(
            :include => [:person , :events, :user]
        )
    end

    def destroy
        # byebug
        @timeline = Timeline.find(params[:id])
        @timeline.ets.destroy_all
        @timeline.destroy
        
        
    end
    

    def create
        user = User.find_or_create_by(username: params[:username], firebase_id: params[:firebase_id])
        country = Country.find_or_create_by(name: params[:country])
        city = City.find_or_create_by(name: params[:region], country: country)
        if params[:deathday] == "0000-00-00"
            person = Person.find_or_create_by(name: params[:person], birthday: params[:birthday], deathday: nil, city: city)
        else
            person = Person.find_or_create_by(name: params[:person], birthday: params[:birthday], deathday: params[:deathday], city: city)
        end
        @timeline = Timeline.create(title: params[:title], status: "edit", picture: "", user: user, person: person )
        @event = Event.create(snippet: "Birthday", user: user, instance_type: "Personal", date: params[:birthday], scale: "Major" )
        ET.create(event: @event, timeline: @timeline)
        render json: @timeline.to_json(
            :include => [:person , :events, :user]
        )        
    end

    def update
        timeline = Timeline.find(params[:id])
        if params[:status]
            timeline.update(status: params[:status])
            render json: timeline.to_json(
                :include => [:person => { :except => [ :created_at, :updated_at, :region_id], :include => [:city => {:include => [:country]}]}, :user => { :except => [:firebase_id, :created_at, :updated_at, :id]}],
               
            )
        else params[:title]
            
            timeline.title = params[:title]
            timeline.picture = params[:imgURL]

            person = timeline.person
            person.name = params[:person]
            person.birthday = params[:birthday]
            person.deathday = params[:deathday]
            if params[:region]
                country = Country.find_or_create_by(name: params[:country])
                city = City.find_or_create_by(name: params[:region], country: country)
                person.city = city
            end
            person.save
            timeline.save
            render json: timeline.to_json(
                :include => [:person => { :except => [ :created_at, :updated_at, :region_id], :include => [:city => {:include => [:country]}]}, :user => { :except => [:firebase_id, :created_at, :updated_at, :id]}],
               
            )
        end
    end

    


end

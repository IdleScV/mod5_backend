class EventsController < ApplicationController



    def create
        
       
        user =  User.find_by(firebase_id: params[:firebase_id])
        timeline = Timeline.find(params[:timeline_id])
        event = Event.new(user: user, instance_type: params[:type], scale: params[:scale], details: params[:details], date: params[:date], imageUrl: params[:imageUrl], snippet: params[:snippet])
        if params[:type] == "World"
            Et.create(event: event, timeline: timeline)
            render json: event

        elsif params[:type] == "Country"
            country = Country.find_or_create_by(name: params[:country])
            event.instance_id = country.id
            event.save

            Et.create(event: event, timeline: timeline)
            render json: event

        elsif params[:type] == "Region"
            country = Country.find_or_create_by(name: params[:country])
            city = City.find_or_create_by(country: country, name: params[:region])
            event.city = city
            event.instance_id = city.id
            event.save

            Et.create(event: event, timeline: timeline)
            render json: event

        elsif params[:type] == "Personal"
            country = Country.find_or_create_by(name: params[:country])
            city = City.find_or_create_by(country: country, name: params[:region])
            event.city = city
            event.save

            Et.create(event: event, timeline: timeline)
            render json: event

        else
            render json: {message: "Error"}
        end

        
    end

    def update
        # byebug
        event = Event.find(params[:id])
        event.snippet = params[:snippet]
        event.details = params[:details]
        event.date = params[:date]
        event.imageUrl = params[:imageUrl]
        event.imageText = params[:imageText]
        event.save
        render json: event
    end

    

end
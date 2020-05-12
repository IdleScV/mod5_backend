class EtsController < ApplicationController


    def destroy
        # byebug
        et = Et.find_by(timeline_id: params[:id], event_id: params[:eventId])
        event = Event.find(params[:eventId])

        if event.ets.length > 1
            et.destroy
            render json: {message: "delete et "}
        else
            et.destroy
            event.destroy
            render json: {message: "deleted et + event "}
        end
        
        
    end

end
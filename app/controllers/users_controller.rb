class UsersController < ApplicationController


    def index
        @users = User.all
        render json: @users.to_json( 
            :except => [:created_at, :updated_at],
            :include => [
                :timelines => { :except => [:user_id, :updated_at], 
                                :include => [
                                    :person => {:except => [:created_at, :updated_at, :city_id] }]}] 
           )
    end

    def create

    end


end
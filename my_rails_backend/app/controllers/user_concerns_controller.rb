class UserConcernsController < ApplicationController

    def index
        userConcerns = UserConcern.all
          render json: userConcerns
      end

      def create
      
           userConcern =  UserConcern.create(user_id: params[:user_id], concern_id: params[:concern_id])
            render json: userConcern
      end
    
end

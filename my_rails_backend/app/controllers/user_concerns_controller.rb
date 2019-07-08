class UserConcernsController < ApplicationController

    def show
        userConcern = UserConcern.find_by(id: params[:id])
        if userConcern
          render json: userConcern
        else
          render json: { error: "User Concern not found."}, status: 404
        end
      end

    
end

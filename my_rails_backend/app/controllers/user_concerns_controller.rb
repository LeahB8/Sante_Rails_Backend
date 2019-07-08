class UserConcernsController < ApplicationController

    def show
        userConcern = UserConcern.find_by(id: params[:id])
        if userConcern
          render json: userConcern
        else
          render json: { error: "User Concern not found."}, status: 404
        end
      end

      def create
        userConcern = UserConcern.find_by(id: params[:id])
        if userConcern
            userConcern.create(user_id: params[:user_id], concern_id: params[:concern_id])
        else
            render json: { error: "User Concern not found."}, status: 404
        end
    end

end
